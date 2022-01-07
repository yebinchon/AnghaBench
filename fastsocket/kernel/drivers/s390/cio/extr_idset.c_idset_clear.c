
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_id; int num_ssid; int bitmap; } ;


 int bitmap_size (int ,int ) ;
 int memset (int ,int ,int ) ;

void idset_clear(struct idset *set)
{
 memset(set->bitmap, 0, bitmap_size(set->num_ssid, set->num_id));
}
