
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_dma_user {int inuse; int * pool; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int ENODEV ;
 int IS_USED (int) ;
 int IS_VALID_CHANNEL (int) ;
 struct stmp3xxx_dma_user* channels ;
 int dma_pool_destroy (int *) ;

int stmp3xxx_dma_release(int ch)
{
 struct stmp3xxx_dma_user *user = channels + ch;
 int err = 0;

 if (!IS_VALID_CHANNEL(ch)) {
  err = -ENODEV;
  goto out;
 }
 if (!IS_USED(ch)) {
  err = -EBUSY;
  goto out;
 }
 BUG_ON(user->pool == ((void*)0));
 dma_pool_destroy(user->pool);
 user->inuse--;
out:
 return err;
}
