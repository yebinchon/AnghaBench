
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_ssid; int num_id; int bitmap; } ;


 int find_first_bit (int ,int) ;

int idset_is_empty(struct idset *set)
{
 int bitnum;

 bitnum = find_first_bit(set->bitmap, set->num_ssid * set->num_id);
 if (bitnum >= set->num_ssid * set->num_id)
  return 1;
 return 0;
}
