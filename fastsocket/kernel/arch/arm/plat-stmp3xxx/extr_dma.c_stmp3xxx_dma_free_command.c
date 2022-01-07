
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmp3xxx_dma_descriptor {int * next_descr; int * virtual_buf_ptr; scalar_t__ handle; int * command; } ;
struct TYPE_2__ {int pool; } ;


 int EBUSY ;
 int ENODEV ;
 int IS_USED (int) ;
 int IS_VALID_CHANNEL (int) ;
 int WARN_ON (int) ;
 TYPE_1__* channels ;
 int dma_pool_free (int ,int *,scalar_t__) ;

int stmp3xxx_dma_free_command(int channel,
         struct stmp3xxx_dma_descriptor *descriptor)
{
 int err = 0;

 if (!IS_VALID_CHANNEL(channel)) {
  err = -ENODEV;
  goto out;
 }
 if (!IS_USED(channel)) {
  err = -EBUSY;
  goto out;
 }


 dma_pool_free(channels[channel].pool, descriptor->command,
        descriptor->handle);


 descriptor->command = ((void*)0);
 descriptor->handle = 0;
 descriptor->virtual_buf_ptr = ((void*)0);
 descriptor->next_descr = ((void*)0);

 WARN_ON(err);
out:
 return err;
}
