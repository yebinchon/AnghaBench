
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd6729_socket {int poll_timer; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pd6729_interrupt (int ,void*) ;

__attribute__((used)) static void pd6729_interrupt_wrapper(unsigned long data)
{
 struct pd6729_socket *socket = (struct pd6729_socket *) data;

 pd6729_interrupt(0, (void *)socket);
 mod_timer(&socket->poll_timer, jiffies + HZ);
}
