
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int ENOIOCTLCMD ;

__attribute__((used)) static int a2232_ioctl( struct tty_struct *tty, struct file *file,
   unsigned int cmd, unsigned long arg)
{
 return -ENOIOCTLCMD;
}
