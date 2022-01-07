
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_sleep; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int POLLOUT ;
 int POLLWRBAND ;
 int POLLWRNORM ;
 int SOCK_ASYNC_NOSPACE ;
 int sock_writeable (struct sock*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ waitqueue_active (scalar_t__) ;
 int wake_up_interruptible_poll (scalar_t__,int) ;

__attribute__((used)) static void macvtap_sock_write_space(struct sock *sk)
{
 if (!sock_writeable(sk) ||
     !test_and_clear_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags))
  return;

 if (sk->sk_sleep && waitqueue_active(sk->sk_sleep))
  wake_up_interruptible_poll(sk->sk_sleep, POLLOUT | POLLWRNORM | POLLWRBAND);
}
