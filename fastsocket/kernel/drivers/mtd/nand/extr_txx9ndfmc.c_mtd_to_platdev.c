
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9ndfmc_priv {struct platform_device* dev; } ;
struct platform_device {int dummy; } ;
struct nand_chip {struct txx9ndfmc_priv* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;



__attribute__((used)) static struct platform_device *mtd_to_platdev(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 struct txx9ndfmc_priv *txx9_priv = chip->priv;
 return txx9_priv->dev;
}
