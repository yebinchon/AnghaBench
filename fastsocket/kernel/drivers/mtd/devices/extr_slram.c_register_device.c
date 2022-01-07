
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_7__ {int end; int start; } ;
typedef TYPE_1__ slram_priv_t ;
struct TYPE_8__ {TYPE_5__* mtdinfo; struct TYPE_8__* next; } ;
typedef TYPE_2__ slram_mtd_list_t ;
struct TYPE_9__ {char* name; unsigned long size; int writesize; struct TYPE_9__* priv; int erasesize; int type; int owner; int write; int read; int unpoint; int point; int erase; int flags; } ;


 int E (char*) ;
 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int SLRAM_BLK_SZ ;
 int T (char*,char*,unsigned long,...) ;
 int THIS_MODULE ;
 scalar_t__ add_mtd_device (TYPE_5__*) ;
 int ioremap (unsigned long,unsigned long) ;
 int iounmap (int ) ;
 int kfree (TYPE_5__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 void* kzalloc (int,int ) ;
 int slram_erase ;
 TYPE_2__* slram_mtdlist ;
 int slram_point ;
 int slram_read ;
 int slram_unpoint ;
 int slram_write ;

__attribute__((used)) static int register_device(char *name, unsigned long start, unsigned long length)
{
 slram_mtd_list_t **curmtd;

 curmtd = &slram_mtdlist;
 while (*curmtd) {
  curmtd = &(*curmtd)->next;
 }

 *curmtd = kmalloc(sizeof(slram_mtd_list_t), GFP_KERNEL);
 if (!(*curmtd)) {
  E("slram: Cannot allocate new MTD device.\n");
  return(-ENOMEM);
 }
 (*curmtd)->mtdinfo = kzalloc(sizeof(struct mtd_info), GFP_KERNEL);
 (*curmtd)->next = ((void*)0);

 if ((*curmtd)->mtdinfo) {
  (*curmtd)->mtdinfo->priv =
   kzalloc(sizeof(slram_priv_t), GFP_KERNEL);

  if (!(*curmtd)->mtdinfo->priv) {
   kfree((*curmtd)->mtdinfo);
   (*curmtd)->mtdinfo = ((void*)0);
  }
 }

 if (!(*curmtd)->mtdinfo) {
  E("slram: Cannot allocate new MTD device.\n");
  return(-ENOMEM);
 }

 if (!(((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start =
    ioremap(start, length))) {
  E("slram: ioremap failed\n");
  return -EIO;
 }
 ((slram_priv_t *)(*curmtd)->mtdinfo->priv)->end =
  ((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start + length;


 (*curmtd)->mtdinfo->name = name;
 (*curmtd)->mtdinfo->size = length;
 (*curmtd)->mtdinfo->flags = MTD_CAP_RAM;
        (*curmtd)->mtdinfo->erase = slram_erase;
 (*curmtd)->mtdinfo->point = slram_point;
 (*curmtd)->mtdinfo->unpoint = slram_unpoint;
 (*curmtd)->mtdinfo->read = slram_read;
 (*curmtd)->mtdinfo->write = slram_write;
 (*curmtd)->mtdinfo->owner = THIS_MODULE;
 (*curmtd)->mtdinfo->type = MTD_RAM;
 (*curmtd)->mtdinfo->erasesize = SLRAM_BLK_SZ;
 (*curmtd)->mtdinfo->writesize = 1;

 if (add_mtd_device((*curmtd)->mtdinfo)) {
  E("slram: Failed to register new device\n");
  iounmap(((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start);
  kfree((*curmtd)->mtdinfo->priv);
  kfree((*curmtd)->mtdinfo);
  return(-EAGAIN);
 }
 T("slram: Registered device %s from %luKiB to %luKiB\n", name,
   (start / 1024), ((start + length) / 1024));
 T("slram: Mapped from 0x%p to 0x%p\n",
   ((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start,
   ((slram_priv_t *)(*curmtd)->mtdinfo->priv)->end);
 return(0);
}
