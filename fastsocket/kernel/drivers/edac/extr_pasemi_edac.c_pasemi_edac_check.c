
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mem_ctl_info {int dummy; } ;


 scalar_t__ pasemi_edac_get_error_info (struct mem_ctl_info*) ;
 int pasemi_edac_process_error_info (struct mem_ctl_info*,scalar_t__) ;

__attribute__((used)) static void pasemi_edac_check(struct mem_ctl_info *mci)
{
 u32 errsta;

 errsta = pasemi_edac_get_error_info(mci);
 if (errsta)
  pasemi_edac_process_error_info(mci, errsta);
}
