
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef size_t loff_t ;


 size_t CAPI_MAXAPPL ;
 void* capi_applications ;

__attribute__((used)) static void *
applications_start(struct seq_file *seq, loff_t *pos)
{
 if (*pos < CAPI_MAXAPPL)
  return &capi_applications[*pos];

 return ((void*)0);
}
