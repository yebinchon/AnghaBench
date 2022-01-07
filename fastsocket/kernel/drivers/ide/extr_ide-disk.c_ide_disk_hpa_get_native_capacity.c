
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ capacity64; int id; } ;
typedef TYPE_1__ ide_drive_t ;


 int hpa_list ;
 scalar_t__ ide_in_drive_list (int ,int ) ;
 scalar_t__ idedisk_read_native_max_address (TYPE_1__*,int) ;

__attribute__((used)) static u64 ide_disk_hpa_get_native_capacity(ide_drive_t *drive, int lba48)
{
 u64 capacity, set_max;

 capacity = drive->capacity64;
 set_max = idedisk_read_native_max_address(drive, lba48);

 if (ide_in_drive_list(drive->id, hpa_list)) {




  if (set_max == capacity + 1)
   set_max--;
 }

 return set_max;
}
