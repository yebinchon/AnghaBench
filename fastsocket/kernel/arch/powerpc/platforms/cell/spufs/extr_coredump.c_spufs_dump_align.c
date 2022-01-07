
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ PAGE_SIZE ;
 int memset (char*,int ,int) ;
 int min (scalar_t__,scalar_t__) ;
 int spufs_dump_write (struct file*,char*,int,scalar_t__*) ;

__attribute__((used)) static int spufs_dump_align(struct file *file, char *buf, loff_t new_off,
       loff_t *foffset)
{
 int rc, size;

 size = min((loff_t)PAGE_SIZE, new_off - *foffset);
 memset(buf, 0, size);

 rc = 0;
 while (rc == 0 && new_off > *foffset) {
  size = min((loff_t)PAGE_SIZE, new_off - *foffset);
  rc = spufs_dump_write(file, buf, size, foffset);
 }

 return rc;
}
