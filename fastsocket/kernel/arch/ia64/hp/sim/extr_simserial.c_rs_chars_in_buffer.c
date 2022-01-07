
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {int tail; int head; } ;
struct async_struct {TYPE_1__ xmit; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int SERIAL_XMIT_SIZE ;

__attribute__((used)) static int rs_chars_in_buffer(struct tty_struct *tty)
{
 struct async_struct *info = (struct async_struct *)tty->driver_data;

 return CIRC_CNT(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
}
