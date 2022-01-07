
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_vendor_class {scalar_t__* method_table; } ;


 int MAX_MGMT_OUI ;

__attribute__((used)) static int check_vendor_class(struct ib_mad_mgmt_vendor_class *vendor_class)
{
 int i;

 for (i = 0; i < MAX_MGMT_OUI; i++)
  if (vendor_class->method_table[i])
   return 1;
 return 0;
}
