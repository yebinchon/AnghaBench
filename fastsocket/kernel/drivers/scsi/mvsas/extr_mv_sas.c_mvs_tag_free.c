
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int mvs_tag_clear (struct mvs_info*,int ) ;

void mvs_tag_free(struct mvs_info *mvi, u32 tag)
{
 mvs_tag_clear(mvi, tag);
}
