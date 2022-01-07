
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {scalar_t__ datalen; TYPE_1__* pdev; scalar_t__ mmio; scalar_t__ dmabuf; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CAFE_NAND_READ_DATA ;
 int cafe_dev_dbg (int *,char*,int,scalar_t__) ;
 int memcpy (int *,scalar_t__,int) ;
 int memcpy_fromio (int *,scalar_t__,int) ;
 scalar_t__ usedma ;

__attribute__((used)) static void cafe_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
{
 struct cafe_priv *cafe = mtd->priv;

 if (usedma)
  memcpy(buf, cafe->dmabuf + cafe->datalen, len);
 else
  memcpy_fromio(buf, cafe->mmio + CAFE_NAND_READ_DATA + cafe->datalen, len);

 cafe_dev_dbg(&cafe->pdev->dev, "Copy 0x%x bytes from position 0x%x in read buffer.\n",
    len, cafe->datalen);
 cafe->datalen += len;
}
