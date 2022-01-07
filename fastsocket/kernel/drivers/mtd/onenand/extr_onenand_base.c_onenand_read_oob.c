
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int dummy; } ;
struct mtd_oob_ops {int mode; scalar_t__ datbuf; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;


 int EINVAL ;
 int FL_READING ;



 scalar_t__ ONENAND_IS_MLC (struct onenand_chip*) ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_mlc_read_ops_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int onenand_read_oob_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int onenand_read_ops_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int onenand_release_device (struct mtd_info*) ;

__attribute__((used)) static int onenand_read_oob(struct mtd_info *mtd, loff_t from,
       struct mtd_oob_ops *ops)
{
 struct onenand_chip *this = mtd->priv;
 int ret;

 switch (ops->mode) {
 case 129:
 case 130:
  break;
 case 128:

 default:
  return -EINVAL;
 }

 onenand_get_device(mtd, FL_READING);
 if (ops->datbuf)
  ret = ONENAND_IS_MLC(this) ?
   onenand_mlc_read_ops_nolock(mtd, from, ops) :
   onenand_read_ops_nolock(mtd, from, ops);
 else
  ret = onenand_read_oob_nolock(mtd, from, ops);
 onenand_release_device(mtd);

 return ret;
}
