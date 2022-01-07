
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bcma_sflash {int size; int numblocks; int blocksize; int window; struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int mtd; int size; int numblocks; int blocksize; int window; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm47xxsflash_fill_mtd (struct bcm47xxsflash*) ;
 struct bcma_sflash* dev_get_platdata (int *) ;
 int kfree (int *) ;
 struct bcm47xxsflash* kzalloc (int,int ) ;
 int mtd_device_parse_register (int *,int ,int *,int *,int ) ;
 int pr_err (char*,int) ;
 int probes ;

__attribute__((used)) static int bcm47xxsflash_probe(struct platform_device *pdev)
{
 struct bcma_sflash *sflash = dev_get_platdata(&pdev->dev);
 struct bcm47xxsflash *b47s;
 int err;

 b47s = kzalloc(sizeof(*b47s), GFP_KERNEL);
 if (!b47s) {
  err = -ENOMEM;
  goto out;
 }
 sflash->priv = b47s;

 b47s->window = sflash->window;
 b47s->blocksize = sflash->blocksize;
 b47s->numblocks = sflash->numblocks;
 b47s->size = sflash->size;
 bcm47xxsflash_fill_mtd(b47s);

 err = mtd_device_parse_register(&b47s->mtd, probes, ((void*)0), ((void*)0), 0);
 if (err) {
  pr_err("Failed to register MTD device: %d\n", err);
  goto err_dev_reg;
 }

 return 0;

err_dev_reg:
 kfree(&b47s->mtd);
out:
 return err;
}
