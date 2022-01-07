
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct pmf_function {char const* name; void** data; unsigned int length; int link; void* phandle; void* flags; struct pmf_device* dev; void* driver_data; int node; int irq_clients; int ref; } ;
struct pmf_device {int functions; int node; } ;


 int DBG (char*,...) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct pmf_function*) ;
 int kref_init (int *) ;
 struct pmf_function* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pmf_get_device (struct pmf_device*) ;
 scalar_t__ pmf_parse_one (struct pmf_function*,int *,int *,int *) ;

__attribute__((used)) static int pmf_add_function_prop(struct pmf_device *dev, void *driverdata,
     const char *name, u32 *data,
     unsigned int length)
{
 int count = 0;
 struct pmf_function *func = ((void*)0);

 DBG("pmf: Adding functions for platform-do-%s\n", name);

 while (length >= 12) {

  func = kzalloc(sizeof(struct pmf_function), GFP_KERNEL);
  if (func == ((void*)0))
   goto bail;
  kref_init(&func->ref);
  INIT_LIST_HEAD(&func->irq_clients);
  func->node = dev->node;
  func->driver_data = driverdata;
  func->name = name;
  func->phandle = data[0];
  func->flags = data[1];
  data += 2;
  length -= 8;
  func->data = data;
  func->length = length;
  func->dev = dev;
  DBG("pmf: idx %d: flags=%08x, phandle=%08x "
      " %d bytes remaining, parsing...\n",
      count+1, func->flags, func->phandle, length);
  if (pmf_parse_one(func, ((void*)0), ((void*)0), ((void*)0))) {
   kfree(func);
   goto bail;
  }
  length -= func->length;
  data = (u32 *)(((u8 *)data) + func->length);
  list_add(&func->link, &dev->functions);
  pmf_get_device(dev);
  count++;
 }
 bail:
 DBG("pmf: Added %d functions\n", count);

 return count;
}
