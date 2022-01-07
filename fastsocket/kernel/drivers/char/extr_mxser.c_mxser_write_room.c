
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {int xmit_cnt; } ;


 int SERIAL_XMIT_SIZE ;

__attribute__((used)) static int mxser_write_room(struct tty_struct *tty)
{
 struct mxser_port *info = tty->driver_data;
 int ret;

 ret = SERIAL_XMIT_SIZE - info->xmit_cnt - 1;
 return ret < 0 ? 0 : ret;
}
