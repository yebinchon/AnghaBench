
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_dma_user {char const* name; int inuse; int * pool; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_USED (int) ;
 int IS_VALID_CHANNEL (int) ;
 int PAGE_SIZE ;
 struct stmp3xxx_dma_user* channels ;
 int * dma_pool_create (char const*,struct device*,int ,int ,int ) ;
 int pool_alignment ;
 int pool_item_size ;

int stmp3xxx_dma_request(int ch, struct device *dev, const char *name)
{
 struct stmp3xxx_dma_user *user;
 int err = 0;

 user = channels + ch;
 if (!IS_VALID_CHANNEL(ch)) {
  err = -ENODEV;
  goto out;
 }
 if (IS_USED(ch)) {
  err = -EBUSY;
  goto out;
 }

 user->pool = dma_pool_create(name, dev, pool_item_size,
         pool_alignment, PAGE_SIZE);
 if (user->pool == ((void*)0)) {
  err = -ENOMEM;
  goto out;
 }
 user->name = name;
 user->inuse++;
out:
 return err;
}
