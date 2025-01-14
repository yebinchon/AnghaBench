
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mvs_info {unsigned int tags_num; int tags; } ;


 int SAS_QUEUE_FULL ;
 unsigned int find_first_zero_bit (void*,unsigned int) ;
 int mvs_tag_set (struct mvs_info*,unsigned int) ;

inline int mvs_tag_alloc(struct mvs_info *mvi, u32 *tag_out)
{
 unsigned int index, tag;
 void *bitmap = &mvi->tags;

 index = find_first_zero_bit(bitmap, mvi->tags_num);
 tag = index;
 if (tag >= mvi->tags_num)
  return -SAS_QUEUE_FULL;
 mvs_tag_set(mvi, tag);
 *tag_out = tag;
 return 0;
}
