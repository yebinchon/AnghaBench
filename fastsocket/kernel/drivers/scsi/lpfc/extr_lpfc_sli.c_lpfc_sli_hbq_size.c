
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hbq_entry {int dummy; } ;


 int lpfc_sli_hbq_entry_count () ;

int
lpfc_sli_hbq_size(void)
{
 return lpfc_sli_hbq_entry_count() * sizeof(struct lpfc_hbq_entry);
}
