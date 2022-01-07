
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;


 int ENOMEM ;
 struct rfkill* ERR_PTR (int) ;
 int acer_rfkill_ops ;
 struct rfkill* rfkill_alloc (char*,struct device*,int,int *,void*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_register (struct rfkill*) ;

__attribute__((used)) static struct rfkill *acer_rfkill_register(struct device *dev,
        enum rfkill_type type,
        char *name, u32 cap)
{
 int err;
 struct rfkill *rfkill_dev;

 rfkill_dev = rfkill_alloc(name, dev, type,
      &acer_rfkill_ops,
      (void *)(unsigned long)cap);
 if (!rfkill_dev)
  return ERR_PTR(-ENOMEM);

 err = rfkill_register(rfkill_dev);
 if (err) {
  rfkill_destroy(rfkill_dev);
  return ERR_PTR(err);
 }
 return rfkill_dev;
}
