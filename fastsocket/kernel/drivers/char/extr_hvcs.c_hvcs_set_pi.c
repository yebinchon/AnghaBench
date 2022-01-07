
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcs_struct {int * p_location_code; int p_partition_ID; int p_unit_address; } ;
struct hvcs_partner_info {int * location_code; int partition_ID; int unit_address; } ;


 int HVCS_CLC_LENGTH ;
 int strlen (int *) ;
 int strncpy (int *,int *,int) ;

__attribute__((used)) static void hvcs_set_pi(struct hvcs_partner_info *pi, struct hvcs_struct *hvcsd)
{
 int clclength;

 hvcsd->p_unit_address = pi->unit_address;
 hvcsd->p_partition_ID = pi->partition_ID;
 clclength = strlen(&pi->location_code[0]);
 if (clclength > HVCS_CLC_LENGTH)
  clclength = HVCS_CLC_LENGTH;


 strncpy(&hvcsd->p_location_code[0],
   &pi->location_code[0], clclength + 1);
}
