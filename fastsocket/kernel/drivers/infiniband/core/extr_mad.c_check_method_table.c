
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_method_table {scalar_t__* agent; } ;


 int IB_MGMT_MAX_METHODS ;

__attribute__((used)) static int check_method_table(struct ib_mad_mgmt_method_table *method)
{
 int i;

 for (i = 0; i < IB_MGMT_MAX_METHODS; i++)
  if (method->agent[i])
   return 1;
 return 0;
}
