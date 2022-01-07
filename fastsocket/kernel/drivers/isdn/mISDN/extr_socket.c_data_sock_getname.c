
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_mISDN {int sapi; int tei; int channel; int dev; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {int addr; int nr; } ;
struct TYPE_6__ {TYPE_2__ ch; TYPE_1__* dev; } ;
struct TYPE_4__ {int id; } ;


 int EBADFD ;
 TYPE_3__* _pms (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int
data_sock_getname(struct socket *sock, struct sockaddr *addr,
    int *addr_len, int peer)
{
 struct sockaddr_mISDN *maddr = (struct sockaddr_mISDN *) addr;
 struct sock *sk = sock->sk;

 if (!_pms(sk)->dev)
  return -EBADFD;

 lock_sock(sk);

 *addr_len = sizeof(*maddr);
 maddr->dev = _pms(sk)->dev->id;
 maddr->channel = _pms(sk)->ch.nr;
 maddr->sapi = _pms(sk)->ch.addr & 0xff;
 maddr->tei = (_pms(sk)->ch.addr >> 8) & 0xff;
 release_sock(sk);
 return 0;
}
