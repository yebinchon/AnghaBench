
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fcf_record {int dummy; } ;


 scalar_t__ bf_get (int ,struct fcf_record*) ;
 int lpfc_fcf_record_fab_name_0 ;
 int lpfc_fcf_record_fab_name_1 ;
 int lpfc_fcf_record_fab_name_2 ;
 int lpfc_fcf_record_fab_name_3 ;
 int lpfc_fcf_record_fab_name_4 ;
 int lpfc_fcf_record_fab_name_5 ;
 int lpfc_fcf_record_fab_name_6 ;
 int lpfc_fcf_record_fab_name_7 ;

__attribute__((used)) static uint32_t
lpfc_fab_name_match(uint8_t *fab_name, struct fcf_record *new_fcf_record)
{
 if (fab_name[0] != bf_get(lpfc_fcf_record_fab_name_0, new_fcf_record))
  return 0;
 if (fab_name[1] != bf_get(lpfc_fcf_record_fab_name_1, new_fcf_record))
  return 0;
 if (fab_name[2] != bf_get(lpfc_fcf_record_fab_name_2, new_fcf_record))
  return 0;
 if (fab_name[3] != bf_get(lpfc_fcf_record_fab_name_3, new_fcf_record))
  return 0;
 if (fab_name[4] != bf_get(lpfc_fcf_record_fab_name_4, new_fcf_record))
  return 0;
 if (fab_name[5] != bf_get(lpfc_fcf_record_fab_name_5, new_fcf_record))
  return 0;
 if (fab_name[6] != bf_get(lpfc_fcf_record_fab_name_6, new_fcf_record))
  return 0;
 if (fab_name[7] != bf_get(lpfc_fcf_record_fab_name_7, new_fcf_record))
  return 0;
 return 1;
}
