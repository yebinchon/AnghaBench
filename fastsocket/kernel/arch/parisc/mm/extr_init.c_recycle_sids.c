
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SID_ARRAY_SIZE ;
 int * dirty_space_id ;
 scalar_t__ dirty_space_ids ;
 int free_space_ids ;
 int * space_id ;
 scalar_t__ space_id_index ;

__attribute__((used)) static void recycle_sids(void)
{
 int i;



 if (dirty_space_ids != 0) {
  for (i = 0; i < SID_ARRAY_SIZE; i++) {
   space_id[i] ^= dirty_space_id[i];
   dirty_space_id[i] = 0;
  }

  free_space_ids += dirty_space_ids;
  dirty_space_ids = 0;
  space_id_index = 0;
 }
}
