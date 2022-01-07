
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_shca {int dummy; } ;


 int ehca_process_eq (struct ehca_shca*,int) ;

void ehca_tasklet_eq(unsigned long data)
{
 ehca_process_eq((struct ehca_shca*)data, 1);
}
