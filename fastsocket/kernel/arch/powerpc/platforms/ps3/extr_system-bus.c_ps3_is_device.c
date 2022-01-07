
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ps3_system_bus_device {scalar_t__ bus_id; scalar_t__ dev_id; } ;



__attribute__((used)) static int ps3_is_device(struct ps3_system_bus_device *dev, u64 bus_id,
    u64 dev_id)
{
 return dev->bus_id == bus_id && dev->dev_id == dev_id;
}
