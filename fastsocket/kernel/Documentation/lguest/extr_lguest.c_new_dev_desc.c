
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct lguest_device_desc {int type; } ;
typedef int d ;
struct TYPE_6__ {TYPE_1__* desc; } ;
struct TYPE_5__ {void* descpage; TYPE_3__* lastdev; } ;
struct TYPE_4__ {int config_len; } ;


 void* device_config (TYPE_3__*) ;
 TYPE_2__ devices ;
 int errx (int,char*) ;
 int getpagesize () ;
 struct lguest_device_desc* memcpy (void*,struct lguest_device_desc*,int) ;

__attribute__((used)) static struct lguest_device_desc *new_dev_desc(u16 type)
{
 struct lguest_device_desc d = { .type = type };
 void *p;


 if (devices.lastdev)
  p = device_config(devices.lastdev)
   + devices.lastdev->desc->config_len;
 else
  p = devices.descpage;


 if (p + sizeof(d) > (void *)devices.descpage + getpagesize())
  errx(1, "Too many devices");


 return memcpy(p, &d, sizeof(d));
}
