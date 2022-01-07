
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_namespace_node {int type; } ;





 int FALSE ;
 int TRUE ;

u8 acpi_ev_is_notify_object(struct acpi_namespace_node *node)
{
 switch (node->type) {
 case 130:
 case 129:
 case 128:



  return (TRUE);

 default:
  return (FALSE);
 }
}
