
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {scalar_t__ tagwait; TYPE_1__* ops; int mfc_wq; } ;
struct file {struct spu_context* private_data; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {int (* set_mfc_query ) (struct spu_context*,scalar_t__,int) ;scalar_t__ (* read_mfc_tagstatus ) (struct spu_context*) ;} ;


 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int spufs_wait (int ,int) ;
 int stub1 (struct spu_context*,scalar_t__,int) ;
 scalar_t__ stub2 (struct spu_context*) ;

__attribute__((used)) static int spufs_mfc_flush(struct file *file, fl_owner_t id)
{
 struct spu_context *ctx = file->private_data;
 int ret;

 ret = spu_acquire(ctx);
 if (ret)
  goto out;
 ret = 0;

 spu_release(ctx);
out:
 return ret;
}
