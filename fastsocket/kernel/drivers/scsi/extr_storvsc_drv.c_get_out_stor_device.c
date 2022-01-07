
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_device {scalar_t__ destroy; } ;
struct hv_device {int dummy; } ;


 struct storvsc_device* hv_get_drvdata (struct hv_device*) ;

__attribute__((used)) static inline struct storvsc_device *get_out_stor_device(
     struct hv_device *device)
{
 struct storvsc_device *stor_device;

 stor_device = hv_get_drvdata(device);

 if (stor_device && stor_device->destroy)
  stor_device = ((void*)0);

 return stor_device;
}
