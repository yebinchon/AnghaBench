
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_ssid; int num_id; int * bitmap; } ;


 int __BITOPS_WORDS (int) ;
 unsigned long min (int ,int ) ;

void idset_add_set(struct idset *to, struct idset *from)
{
 unsigned long i, len;

 len = min(__BITOPS_WORDS(to->num_ssid * to->num_id),
    __BITOPS_WORDS(from->num_ssid * from->num_id));
 for (i = 0; i < len ; i++)
  to->bitmap[i] |= from->bitmap[i];
}
