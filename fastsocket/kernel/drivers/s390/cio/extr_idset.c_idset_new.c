
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_ssid; int num_id; int bitmap; } ;


 scalar_t__ bitmap_size (int,int) ;
 int memset (int ,int ,scalar_t__) ;
 struct idset* vmalloc (scalar_t__) ;

__attribute__((used)) static struct idset *idset_new(int num_ssid, int num_id)
{
 struct idset *set;

 set = vmalloc(sizeof(struct idset) + bitmap_size(num_ssid, num_id));
 if (set) {
  set->num_ssid = num_ssid;
  set->num_id = num_id;
  memset(set->bitmap, 0, bitmap_size(num_ssid, num_id));
 }
 return set;
}
