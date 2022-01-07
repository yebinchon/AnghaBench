
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef size_t loff_t ;


 size_t CAPI_MAXCONTR ;
 void* capi_cards ;

__attribute__((used)) static void *controller_next(struct seq_file *seq, void *v, loff_t *pos)
{
 ++*pos;
 if (*pos < CAPI_MAXCONTR)
  return &capi_cards[*pos];

 return ((void*)0);
}
