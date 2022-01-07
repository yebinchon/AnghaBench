
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_ops {scalar_t__ mode; int oobbuf; int retlen; int len; scalar_t__ ooboffs; } ;
struct mtd_info {struct DiskOnChip* priv; } ;
struct DiskOnChip {int lock; } ;
typedef scalar_t__ loff_t ;


 int BUG_ON (int) ;
 scalar_t__ MTD_OOB_PLACE ;
 int doc_write_oob_nolock (struct mtd_info*,scalar_t__,int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int doc_write_oob(struct mtd_info *mtd, loff_t ofs,
    struct mtd_oob_ops *ops)
{
 struct DiskOnChip *this = mtd->priv;
 int ret;

 BUG_ON(ops->mode != MTD_OOB_PLACE);

 mutex_lock(&this->lock);
 ret = doc_write_oob_nolock(mtd, ofs + ops->ooboffs, ops->len,
       &ops->retlen, ops->oobbuf);

 mutex_unlock(&this->lock);
 return ret;
}
