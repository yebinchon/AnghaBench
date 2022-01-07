
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_host_info {int dev_info_list; } ;
struct sdebug_dev_info {int dev_list; struct sdebug_host_info* sdbg_host; } ;
typedef int gfp_t ;


 struct sdebug_dev_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct sdebug_dev_info *
sdebug_device_create(struct sdebug_host_info *sdbg_host, gfp_t flags)
{
 struct sdebug_dev_info *devip;

 devip = kzalloc(sizeof(*devip), flags);
 if (devip) {
  devip->sdbg_host = sdbg_host;
  list_add_tail(&devip->dev_list, &sdbg_host->dev_info_list);
 }
 return devip;
}
