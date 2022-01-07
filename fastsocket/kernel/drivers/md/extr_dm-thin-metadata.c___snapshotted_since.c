
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_thin_device {scalar_t__ snapshotted_time; } ;



__attribute__((used)) static bool __snapshotted_since(struct dm_thin_device *td, uint32_t time)
{
 return td->snapshotted_time > time;
}
