
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; unsigned long size; int writesize; int priv; int erasesize; int type; int owner; int write; int read; int unpoint; int point; int erase; int flags; } ;
struct phram_mtd_list {TYPE_1__ mtd; int list; } ;


 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int PAGE_SIZE ;
 int THIS_MODULE ;
 scalar_t__ add_mtd_device (TYPE_1__*) ;
 int ioremap (unsigned long,unsigned long) ;
 int iounmap (int ) ;
 int kfree (struct phram_mtd_list*) ;
 struct phram_mtd_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int phram_erase ;
 int phram_list ;
 int phram_point ;
 int phram_read ;
 int phram_unpoint ;
 int phram_write ;
 int pr_err (char*) ;

__attribute__((used)) static int register_device(char *name, unsigned long start, unsigned long len)
{
 struct phram_mtd_list *new;
 int ret = -ENOMEM;

 new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  goto out0;

 ret = -EIO;
 new->mtd.priv = ioremap(start, len);
 if (!new->mtd.priv) {
  pr_err("ioremap failed\n");
  goto out1;
 }


 new->mtd.name = name;
 new->mtd.size = len;
 new->mtd.flags = MTD_CAP_RAM;
        new->mtd.erase = phram_erase;
 new->mtd.point = phram_point;
 new->mtd.unpoint = phram_unpoint;
 new->mtd.read = phram_read;
 new->mtd.write = phram_write;
 new->mtd.owner = THIS_MODULE;
 new->mtd.type = MTD_RAM;
 new->mtd.erasesize = PAGE_SIZE;
 new->mtd.writesize = 1;

 ret = -EAGAIN;
 if (add_mtd_device(&new->mtd)) {
  pr_err("Failed to register new device\n");
  goto out2;
 }

 list_add_tail(&new->list, &phram_list);
 return 0;

out2:
 iounmap(new->mtd.priv);
out1:
 kfree(new);
out0:
 return ret;
}
