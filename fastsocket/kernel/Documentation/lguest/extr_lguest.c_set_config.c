
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* desc; } ;
struct TYPE_4__ {unsigned int descpage; } ;
struct TYPE_3__ {unsigned int config_len; } ;


 int assert (int) ;
 unsigned int device_config (struct device*) ;
 TYPE_2__ devices ;
 int errx (int,char*) ;
 unsigned int getpagesize () ;
 int memcpy (unsigned int,void const*,unsigned int) ;

__attribute__((used)) static void set_config(struct device *dev, unsigned len, const void *conf)
{

 if (device_config(dev) + len > devices.descpage + getpagesize())
  errx(1, "Too many devices");


 memcpy(device_config(dev), conf, len);
 dev->desc->config_len = len;


 assert(dev->desc->config_len == len);
}
