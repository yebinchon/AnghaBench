
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {int ctl1; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL1_CHIPSELECT ;
 int cafe_dev_dbg (int *,char*,int) ;

__attribute__((used)) static void cafe_select_chip(struct mtd_info *mtd, int chipnr)
{
 struct cafe_priv *cafe = mtd->priv;

 cafe_dev_dbg(&cafe->pdev->dev, "select_chip %d\n", chipnr);



 if (chipnr)
  cafe->ctl1 |= CTRL1_CHIPSELECT;
 else
  cafe->ctl1 &= ~CTRL1_CHIPSELECT;
}
