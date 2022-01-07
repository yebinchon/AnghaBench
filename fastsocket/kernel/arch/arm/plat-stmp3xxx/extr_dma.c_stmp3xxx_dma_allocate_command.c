
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_dma_user {int pool; } ;
struct stmp3xxx_dma_descriptor {int command; int handle; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_USED (int) ;
 int IS_VALID_CHANNEL (int) ;
 int WARN_ON (int) ;
 struct stmp3xxx_dma_user* channels ;
 int dma_pool_alloc (int ,int ,int *) ;
 int memset (int ,int ,int ) ;
 int pool_item_size ;

int stmp3xxx_dma_allocate_command(int channel,
      struct stmp3xxx_dma_descriptor *descriptor)
{
 struct stmp3xxx_dma_user *user = channels + channel;
 int err = 0;

 if (!IS_VALID_CHANNEL(channel)) {
  err = -ENODEV;
  goto out;
 }
 if (!IS_USED(channel)) {
  err = -EBUSY;
  goto out;
 }
 if (descriptor == ((void*)0)) {
  err = -EINVAL;
  goto out;
 }


 descriptor->command =
     dma_pool_alloc(user->pool, GFP_KERNEL, &descriptor->handle);


 if (!descriptor->command) {
  err = -ENOMEM;
  goto out;
 }

 memset(descriptor->command, 0, pool_item_size);
out:
 WARN_ON(err);
 return err;
}
