
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; struct property* next; void* value; int name; } ;
struct device_node {int node; struct property* properties; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OF_IS_DYNAMIC (struct property*) ;
 int OF_MARK_DYNAMIC (struct property*) ;
 int devtree_lock ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_set_property_mutex ;
 int prom_setprop (int ,char const*,void*,int) ;
 int strcasecmp (int ,char const*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int of_set_property(struct device_node *dp, const char *name, void *val, int len)
{
 struct property **prevp;
 void *new_val;
 int err;

 new_val = kmalloc(len, GFP_KERNEL);
 if (!new_val)
  return -ENOMEM;

 memcpy(new_val, val, len);

 err = -ENODEV;

 mutex_lock(&of_set_property_mutex);
 write_lock(&devtree_lock);
 prevp = &dp->properties;
 while (*prevp) {
  struct property *prop = *prevp;

  if (!strcasecmp(prop->name, name)) {
   void *old_val = prop->value;
   int ret;

   ret = prom_setprop(dp->node, name, val, len);

   err = -EINVAL;
   if (ret >= 0) {
    prop->value = new_val;
    prop->length = len;

    if (OF_IS_DYNAMIC(prop))
     kfree(old_val);

    OF_MARK_DYNAMIC(prop);

    err = 0;
   }
   break;
  }
  prevp = &(*prevp)->next;
 }
 write_unlock(&devtree_lock);
 mutex_unlock(&of_set_property_mutex);



 return err;
}
