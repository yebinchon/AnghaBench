
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum link_pm { ____Placeholder_link_pm } link_pm ;
struct TYPE_3__ {int value; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* link_pm_policy ;

__attribute__((used)) static const char *ata_scsi_lpm_get(enum link_pm policy)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(link_pm_policy); i++)
  if (link_pm_policy[i].value == policy)
   return link_pm_policy[i].name;

 return ((void*)0);
}
