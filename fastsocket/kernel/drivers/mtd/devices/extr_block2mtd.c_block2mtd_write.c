
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {size_t size; struct block2mtd_dev* priv; } ;
struct block2mtd_dev {int write_mutex; } ;
typedef size_t loff_t ;


 int ENOSPC ;
 int _block2mtd_write (struct block2mtd_dev*,int const*,size_t,size_t,size_t*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int block2mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 struct block2mtd_dev *dev = mtd->priv;
 int err;

 if (!len)
  return 0;
 if (to >= mtd->size)
  return -ENOSPC;
 if (to + len > mtd->size)
  len = mtd->size - to;

 mutex_lock(&dev->write_mutex);
 err = _block2mtd_write(dev, buf, to, len, retlen);
 mutex_unlock(&dev->write_mutex);
 if (err > 0)
  err = 0;
 return err;
}
