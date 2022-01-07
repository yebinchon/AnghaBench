
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_WRITE ;
 int NVRAM_EXCL ;
 int NVRAM_WRITE ;
 int nvram_open_cnt ;
 int nvram_open_mode ;
 int nvram_state_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvram_release(struct inode *inode, struct file *file)
{
 spin_lock(&nvram_state_lock);

 nvram_open_cnt--;


 if (nvram_open_mode & NVRAM_EXCL)
  nvram_open_mode &= ~NVRAM_EXCL;
 if (file->f_mode & FMODE_WRITE)
  nvram_open_mode &= ~NVRAM_WRITE;

 spin_unlock(&nvram_state_lock);

 return 0;
}
