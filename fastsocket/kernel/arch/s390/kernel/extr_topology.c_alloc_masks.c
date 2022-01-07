
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_info {int* mag; int mnest; } ;
struct mask_info {struct mask_info* next; } ;


 int NR_MAG ;
 struct mask_info* alloc_bootmem (int) ;
 int max (int,int) ;

__attribute__((used)) static void alloc_masks(struct tl_info *info, struct mask_info *mask, int offset)
{
 int i, nr_masks;

 nr_masks = info->mag[NR_MAG - offset];
 for (i = 0; i < info->mnest - offset; i++)
  nr_masks *= info->mag[NR_MAG - offset - 1 - i];
 nr_masks = max(nr_masks, 1);
 for (i = 0; i < nr_masks; i++) {
  mask->next = alloc_bootmem(sizeof(struct mask_info));
  mask = mask->next;
 }
}
