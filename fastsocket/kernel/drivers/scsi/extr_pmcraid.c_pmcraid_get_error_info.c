
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pmcraid_ioasc_error {scalar_t__ ioasc_code; } ;


 int ARRAY_SIZE (struct pmcraid_ioasc_error*) ;
 struct pmcraid_ioasc_error* pmcraid_ioasc_error_table ;

__attribute__((used)) static struct pmcraid_ioasc_error *pmcraid_get_error_info(u32 ioasc)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(pmcraid_ioasc_error_table); i++) {
  if (pmcraid_ioasc_error_table[i].ioasc_code == ioasc)
   return &pmcraid_ioasc_error_table[i];
 }
 return ((void*)0);
}
