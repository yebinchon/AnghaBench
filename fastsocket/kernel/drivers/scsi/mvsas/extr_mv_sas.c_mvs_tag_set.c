
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int tags; } ;


 int set_bit (unsigned int,void*) ;

void mvs_tag_set(struct mvs_info *mvi, unsigned int tag)
{
 void *bitmap = &mvi->tags;
 set_bit(tag, bitmap);
}
