
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_std_inq_vpids {scalar_t__* product_id; } ;
struct ipr_ses_table_entry {char* compare_product_id_byte; scalar_t__* product_id; } ;
struct TYPE_2__ {struct ipr_std_inq_vpids vpids; } ;
struct ipr_resource_entry {TYPE_1__ std_inq_data; } ;


 int ARRAY_SIZE (struct ipr_ses_table_entry*) ;
 int IPR_PROD_ID_LEN ;
 struct ipr_ses_table_entry* ipr_ses_table ;

__attribute__((used)) static const struct ipr_ses_table_entry *
ipr_find_ses_entry(struct ipr_resource_entry *res)
{
 int i, j, matches;
 struct ipr_std_inq_vpids *vpids;
 const struct ipr_ses_table_entry *ste = ipr_ses_table;

 for (i = 0; i < ARRAY_SIZE(ipr_ses_table); i++, ste++) {
  for (j = 0, matches = 0; j < IPR_PROD_ID_LEN; j++) {
   if (ste->compare_product_id_byte[j] == 'X') {
    vpids = &res->std_inq_data.vpids;
    if (vpids->product_id[j] == ste->product_id[j])
     matches++;
    else
     break;
   } else
    matches++;
  }

  if (matches == IPR_PROD_ID_LEN)
   return ste;
 }

 return ((void*)0);
}
