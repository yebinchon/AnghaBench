
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; int buf; } ;
struct async_struct {TYPE_1__ xmit; } ;


 int transmit_chars (struct async_struct*,int *) ;

__attribute__((used)) static void rs_flush_chars(struct tty_struct *tty)
{
 struct async_struct *info = (struct async_struct *)tty->driver_data;

 if (info->xmit.head == info->xmit.tail || tty->stopped || tty->hw_stopped ||
     !info->xmit.buf)
  return;

 transmit_chars(info, ((void*)0));
}
