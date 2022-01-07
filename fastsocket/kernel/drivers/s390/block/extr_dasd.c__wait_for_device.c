
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ state; scalar_t__ target; } ;



__attribute__((used)) static inline int _wait_for_device(struct dasd_device *device)
{
 return (device->state == device->target);
}
