
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;





 int CSYNC () ;
 int EINVAL ;
 int bfin_read_SICA_SYSCR () ;
 int bfin_read_SICB_SYSCR () ;
 int bfin_write_SICA_SYSCR (int) ;
 int bfin_write_SICB_SYSCR (int) ;

__attribute__((used)) static int
coreb_ioctl(struct inode *inode, struct file *file, unsigned int cmd, unsigned long arg)
{
 int ret = 0;

 switch (cmd) {
 case 129:
  bfin_write_SICA_SYSCR(bfin_read_SICA_SYSCR() & ~0x0020);
  break;
 case 128:
  bfin_write_SICA_SYSCR(bfin_read_SICA_SYSCR() | 0x0020);
  bfin_write_SICB_SYSCR(bfin_read_SICB_SYSCR() | 0x0080);
  break;
 case 130:
  bfin_write_SICB_SYSCR(bfin_read_SICB_SYSCR() | 0x0080);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 CSYNC();

 return ret;
}
