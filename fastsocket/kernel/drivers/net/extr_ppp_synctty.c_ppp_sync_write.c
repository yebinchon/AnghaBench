
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;

__attribute__((used)) static ssize_t
ppp_sync_write(struct tty_struct *tty, struct file *file,
  const unsigned char *buf, size_t count)
{
 return -EAGAIN;
}
