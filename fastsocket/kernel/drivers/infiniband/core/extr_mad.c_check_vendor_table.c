
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_vendor_class_table {scalar_t__* vendor_class; } ;


 int MAX_MGMT_VENDOR_RANGE2 ;

__attribute__((used)) static int check_vendor_table(struct ib_mad_mgmt_vendor_class_table *vendor)
{
 int i;

 for (i = 0; i < MAX_MGMT_VENDOR_RANGE2; i++)
  if (vendor->vendor_class[i])
   return 1;

 return 0;
}
