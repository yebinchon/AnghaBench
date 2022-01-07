
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_tunnel {int list; int pppol2tp_net; } ;
struct pppol2tp_net {int pppol2tp_tunnel_list_lock; } ;


 int atomic_dec (int *) ;
 int kfree (struct pppol2tp_tunnel*) ;
 int list_del_init (int *) ;
 struct pppol2tp_net* pppol2tp_pernet (int ) ;
 int pppol2tp_tunnel_count ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void pppol2tp_tunnel_free(struct pppol2tp_tunnel *tunnel)
{
 struct pppol2tp_net *pn = pppol2tp_pernet(tunnel->pppol2tp_net);


 write_lock_bh(&pn->pppol2tp_tunnel_list_lock);
 list_del_init(&tunnel->list);
 write_unlock_bh(&pn->pppol2tp_tunnel_list_lock);

 atomic_dec(&pppol2tp_tunnel_count);
 kfree(tunnel);
}
