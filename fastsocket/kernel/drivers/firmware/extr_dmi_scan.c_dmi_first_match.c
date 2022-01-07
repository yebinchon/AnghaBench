
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int dmi_is_end_of_table (struct dmi_system_id const*) ;
 scalar_t__ dmi_matches (struct dmi_system_id const*) ;

const struct dmi_system_id *dmi_first_match(const struct dmi_system_id *list)
{
 const struct dmi_system_id *d;

 for (d = list; !dmi_is_end_of_table(d); d++)
  if (dmi_matches(d))
   return d;

 return ((void*)0);
}
