
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int sk_allocation; int * sk_destruct; struct pppol2tp_tunnel* sk_user_data; int sk_protocol; } ;
struct TYPE_5__ {int tunnel_id; } ;
struct pppol2tp_tunnel {scalar_t__ magic; struct sock* sock; int list; struct net* pppol2tp_net; int hlist_lock; int * old_sk_destruct; int debug; TYPE_2__ stats; int * name; } ;
struct pppol2tp_net {int pppol2tp_tunnel_list_lock; int pppol2tp_tunnel_list; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int encap_rcv; int encap_type; } ;
struct TYPE_4__ {int family; } ;


 int AF_INET ;
 int BUG_ON (int) ;
 int EAFNOSUPPORT ;
 int EBADF ;
 int EBUSY ;
 int ENOMEM ;
 int ENOTCONN ;
 int EPROTONOSUPPORT ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IPPROTO_UDP ;
 int KERN_ERR ;
 scalar_t__ L2TP_TUNNEL_MAGIC ;
 int PPPOL2TP_DEFAULT_DEBUG_FLAGS ;
 int PPPOL2TP_MSG_CONTROL ;
 int PRINTK (int,int ,int ,char*,int ,int,int,...) ;
 int UDP_ENCAP_L2TPINUDP ;
 int atomic_inc (int *) ;
 struct pppol2tp_tunnel* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct pppol2tp_net* pppol2tp_pernet (struct net*) ;
 int pppol2tp_tunnel_count ;
 int pppol2tp_tunnel_destruct ;
 int pppol2tp_tunnel_inc_refcount (struct pppol2tp_tunnel*) ;
 int pppol2tp_udp_encap_recv ;
 int rwlock_init (int *) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;
 int sprintf (int *,char*,int ) ;
 TYPE_3__* udp_sk (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct sock *pppol2tp_prepare_tunnel_socket(struct net *net,
     int fd, u16 tunnel_id, int *error)
{
 int err;
 struct socket *sock = ((void*)0);
 struct sock *sk;
 struct pppol2tp_tunnel *tunnel;
 struct pppol2tp_net *pn;
 struct sock *ret = ((void*)0);




 err = -EBADF;
 sock = sockfd_lookup(fd, &err);
 if (!sock) {
  PRINTK(-1, PPPOL2TP_MSG_CONTROL, KERN_ERR,
         "tunl %hu: sockfd_lookup(fd=%d) returned %d\n",
         tunnel_id, fd, err);
  goto err;
 }

 sk = sock->sk;


 err = -EPROTONOSUPPORT;
 if (sk->sk_protocol != IPPROTO_UDP) {
  PRINTK(-1, PPPOL2TP_MSG_CONTROL, KERN_ERR,
         "tunl %hu: fd %d wrong protocol, got %d, expected %d\n",
         tunnel_id, fd, sk->sk_protocol, IPPROTO_UDP);
  goto err;
 }
 err = -EAFNOSUPPORT;
 if (sock->ops->family != AF_INET) {
  PRINTK(-1, PPPOL2TP_MSG_CONTROL, KERN_ERR,
         "tunl %hu: fd %d wrong family, got %d, expected %d\n",
         tunnel_id, fd, sock->ops->family, AF_INET);
  goto err;
 }

 err = -ENOTCONN;


 tunnel = (struct pppol2tp_tunnel *)sk->sk_user_data;
 if (tunnel != ((void*)0)) {

  err = -EBUSY;
  BUG_ON(tunnel->magic != L2TP_TUNNEL_MAGIC);


  ret = tunnel->sock;
  goto out;
 }




 sk->sk_user_data = tunnel = kzalloc(sizeof(struct pppol2tp_tunnel), GFP_KERNEL);
 if (sk->sk_user_data == ((void*)0)) {
  err = -ENOMEM;
  goto err;
 }

 tunnel->magic = L2TP_TUNNEL_MAGIC;
 sprintf(&tunnel->name[0], "tunl %hu", tunnel_id);

 tunnel->stats.tunnel_id = tunnel_id;
 tunnel->debug = PPPOL2TP_DEFAULT_DEBUG_FLAGS;




 tunnel->old_sk_destruct = sk->sk_destruct;
 sk->sk_destruct = &pppol2tp_tunnel_destruct;

 tunnel->sock = sk;
 sk->sk_allocation = GFP_ATOMIC;


 rwlock_init(&tunnel->hlist_lock);


 tunnel->pppol2tp_net = net;
 pn = pppol2tp_pernet(net);


 INIT_LIST_HEAD(&tunnel->list);
 write_lock_bh(&pn->pppol2tp_tunnel_list_lock);
 list_add(&tunnel->list, &pn->pppol2tp_tunnel_list);
 write_unlock_bh(&pn->pppol2tp_tunnel_list_lock);
 atomic_inc(&pppol2tp_tunnel_count);




 pppol2tp_tunnel_inc_refcount(tunnel);


 (udp_sk(sk))->encap_type = UDP_ENCAP_L2TPINUDP;
 (udp_sk(sk))->encap_rcv = pppol2tp_udp_encap_recv;

 ret = tunnel->sock;

 *error = 0;
out:
 if (sock)
  sockfd_put(sock);

 return ret;

err:
 *error = err;
 goto out;
}
