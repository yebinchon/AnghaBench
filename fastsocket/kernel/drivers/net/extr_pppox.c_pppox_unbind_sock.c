
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct TYPE_2__ {int chan; } ;


 int PPPOX_BOUND ;
 int PPPOX_CONNECTED ;
 int PPPOX_DEAD ;
 int PPPOX_ZOMBIE ;
 int ppp_unregister_channel (int *) ;
 TYPE_1__* pppox_sk (struct sock*) ;

void pppox_unbind_sock(struct sock *sk)
{


 if (sk->sk_state & (PPPOX_BOUND | PPPOX_CONNECTED | PPPOX_ZOMBIE)) {
  ppp_unregister_channel(&pppox_sk(sk)->chan);
  sk->sk_state = PPPOX_DEAD;
 }
}
