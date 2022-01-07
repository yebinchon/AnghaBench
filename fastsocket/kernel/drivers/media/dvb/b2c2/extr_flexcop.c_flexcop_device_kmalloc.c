
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {void* bus_specific; } ;


 int GFP_KERNEL ;
 int err (char*) ;
 int kfree (struct flexcop_device*) ;
 void* kzalloc (size_t,int ) ;

struct flexcop_device *flexcop_device_kmalloc(size_t bus_specific_len)
{
 void *bus;
 struct flexcop_device *fc = kzalloc(sizeof(struct flexcop_device),
    GFP_KERNEL);
 if (!fc) {
  err("no memory");
  return ((void*)0);
 }

 bus = kzalloc(bus_specific_len, GFP_KERNEL);
 if (!bus) {
  err("no memory");
  kfree(fc);
  return ((void*)0);
 }

 fc->bus_specific = bus;

 return fc;
}
