
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ns_mem {int dummy; } ns_mem ;
struct TYPE_6__ {int pgnum; int pgszoob; } ;
struct nandsim {void* pages_written; int nand_pages_slab; TYPE_3__ geom; TYPE_2__* pages; struct file* cfile; int file_buf; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_5__ {int * byte; } ;
struct TYPE_4__ {int aio_write; int write; int aio_read; int read; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 int NS_ERR (char*) ;
 int O_CREAT ;
 int O_LARGEFILE ;
 int O_RDWR ;
 int PTR_ERR (struct file*) ;
 scalar_t__ cache_file ;
 int filp_close (struct file*,int *) ;
 struct file* filp_open (scalar_t__,int,int) ;
 int kmalloc (int ,int ) ;
 int kmem_cache_create (char*,int ,int ,int ,int *) ;
 int memset (void*,int ,int) ;
 int vfree (void*) ;
 void* vmalloc (int) ;

__attribute__((used)) static int alloc_device(struct nandsim *ns)
{
 struct file *cfile;
 int i, err;

 if (cache_file) {
  cfile = filp_open(cache_file, O_CREAT | O_RDWR | O_LARGEFILE, 0600);
  if (IS_ERR(cfile))
   return PTR_ERR(cfile);
  if (!cfile->f_op || (!cfile->f_op->read && !cfile->f_op->aio_read)) {
   NS_ERR("alloc_device: cache file not readable\n");
   err = -EINVAL;
   goto err_close;
  }
  if (!cfile->f_op->write && !cfile->f_op->aio_write) {
   NS_ERR("alloc_device: cache file not writeable\n");
   err = -EINVAL;
   goto err_close;
  }
  ns->pages_written = vmalloc(ns->geom.pgnum);
  if (!ns->pages_written) {
   NS_ERR("alloc_device: unable to allocate pages written array\n");
   err = -ENOMEM;
   goto err_close;
  }
  ns->file_buf = kmalloc(ns->geom.pgszoob, GFP_KERNEL);
  if (!ns->file_buf) {
   NS_ERR("alloc_device: unable to allocate file buf\n");
   err = -ENOMEM;
   goto err_free;
  }
  ns->cfile = cfile;
  memset(ns->pages_written, 0, ns->geom.pgnum);
  return 0;
 }

 ns->pages = vmalloc(ns->geom.pgnum * sizeof(union ns_mem));
 if (!ns->pages) {
  NS_ERR("alloc_device: unable to allocate page array\n");
  return -ENOMEM;
 }
 for (i = 0; i < ns->geom.pgnum; i++) {
  ns->pages[i].byte = ((void*)0);
 }
 ns->nand_pages_slab = kmem_cache_create("nandsim",
      ns->geom.pgszoob, 0, 0, ((void*)0));
 if (!ns->nand_pages_slab) {
  NS_ERR("cache_create: unable to create kmem_cache\n");
  return -ENOMEM;
 }

 return 0;

err_free:
 vfree(ns->pages_written);
err_close:
 filp_close(cfile, ((void*)0));
 return err;
}
