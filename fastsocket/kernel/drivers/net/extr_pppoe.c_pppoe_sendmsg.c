
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_priority; } ;
struct sk_buff {int protocol; int priority; struct net_device* dev; } ;
struct TYPE_2__ {int remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; struct net_device* pppoe_dev; int num; } ;
struct pppoe_hdr {int ver; int type; int length; int * tag; int sid; scalar_t__ code; } ;
struct net_device {size_t mtu; size_t hard_header_len; } ;
struct msghdr {int msg_iov; } ;
struct kiocb {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int ENOTCONN ;
 int ETH_P_PPP_SES ;
 int GFP_KERNEL ;
 int PPPOX_CONNECTED ;
 int SOCK_DEAD ;
 int cpu_to_be16 (int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,size_t) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (size_t) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy (struct pppoe_hdr*,struct pppoe_hdr*,int) ;
 int memcpy_fromiovec (char*,int ,size_t) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 struct sk_buff* sock_wmalloc (struct sock*,size_t,int ,int ) ;

__attribute__((used)) static int pppoe_sendmsg(struct kiocb *iocb, struct socket *sock,
    struct msghdr *m, size_t total_len)
{
 struct sk_buff *skb;
 struct sock *sk = sock->sk;
 struct pppox_sock *po = pppox_sk(sk);
 int error;
 struct pppoe_hdr hdr;
 struct pppoe_hdr *ph;
 struct net_device *dev;
 char *start;

 lock_sock(sk);
 if (sock_flag(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED)) {
  error = -ENOTCONN;
  goto end;
 }

 hdr.ver = 1;
 hdr.type = 1;
 hdr.code = 0;
 hdr.sid = po->num;

 dev = po->pppoe_dev;

 error = -EMSGSIZE;
 if (total_len > (dev->mtu + dev->hard_header_len))
  goto end;


 skb = sock_wmalloc(sk, total_len + dev->hard_header_len + 32,
      0, GFP_KERNEL);
 if (!skb) {
  error = -ENOMEM;
  goto end;
 }


 skb_reserve(skb, dev->hard_header_len);
 skb_reset_network_header(skb);

 skb->dev = dev;

 skb->priority = sk->sk_priority;
 skb->protocol = cpu_to_be16(ETH_P_PPP_SES);

 ph = (struct pppoe_hdr *)skb_put(skb, total_len + sizeof(struct pppoe_hdr));
 start = (char *)&ph->tag[0];

 error = memcpy_fromiovec(start, m->msg_iov, total_len);
 if (error < 0) {
  kfree_skb(skb);
  goto end;
 }

 error = total_len;
 dev_hard_header(skb, dev, ETH_P_PPP_SES,
   po->pppoe_pa.remote, ((void*)0), total_len);

 memcpy(ph, &hdr, sizeof(struct pppoe_hdr));

 ph->length = htons(total_len);

 dev_queue_xmit(skb);

end:
 release_sock(sk);
 return error;
}
