
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {size_t dev_type; size_t bus_type; size_t rev; } ;


 int * flexcop_bus_names ;
 int * flexcop_device_names ;
 int * flexcop_revision_names ;
 int info (char*,char const*,int ,int ,int ,char const*) ;

void flexcop_device_name(struct flexcop_device *fc,
  const char *prefix, const char *suffix)
{
 info("%s '%s' at the '%s' bus controlled by a '%s' %s",
   prefix, flexcop_device_names[fc->dev_type],
   flexcop_bus_names[fc->bus_type],
   flexcop_revision_names[fc->rev], suffix);
}
