
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superhyway_device_id {scalar_t__ id; } ;
struct TYPE_2__ {scalar_t__ id; } ;
struct superhyway_device {TYPE_1__ id; } ;



__attribute__((used)) static const struct superhyway_device_id *
superhyway_match_id(const struct superhyway_device_id *ids,
      struct superhyway_device *dev)
{
 while (ids->id) {
  if (ids->id == dev->id.id)
   return ids;

  ids++;
 }

 return ((void*)0);
}
