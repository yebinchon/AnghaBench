
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int cafe_dev_dbg (int *,char*,int ) ;
 int cafe_read_buf (struct mtd_info*,int *,int) ;

__attribute__((used)) static uint8_t cafe_read_byte(struct mtd_info *mtd)
{
 struct cafe_priv *cafe = mtd->priv;
 uint8_t d;

 cafe_read_buf(mtd, &d, 1);
 cafe_dev_dbg(&cafe->pdev->dev, "Read %02x\n", d);

 return d;
}
