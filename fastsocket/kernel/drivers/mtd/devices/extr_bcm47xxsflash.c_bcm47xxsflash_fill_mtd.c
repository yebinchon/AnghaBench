
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {char* name; int writebufsize; int writesize; int flags; int _read; int size; int type; int owner; struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int size; struct mtd_info mtd; } ;


 int MTD_CAP_ROM ;
 int MTD_ROM ;
 int THIS_MODULE ;
 int bcm47xxsflash_read ;

__attribute__((used)) static void bcm47xxsflash_fill_mtd(struct bcm47xxsflash *b47s)
{
 struct mtd_info *mtd = &b47s->mtd;

 mtd->priv = b47s;
 mtd->name = "bcm47xxsflash";
 mtd->owner = THIS_MODULE;
 mtd->type = MTD_ROM;
 mtd->size = b47s->size;
 mtd->_read = bcm47xxsflash_read;


 mtd->flags = MTD_CAP_ROM;
 mtd->writebufsize = mtd->writesize = 1;
}
