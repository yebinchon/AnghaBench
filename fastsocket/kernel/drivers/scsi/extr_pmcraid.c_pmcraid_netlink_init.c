
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;


 int genl_register_family (TYPE_1__*) ;
 TYPE_1__ pmcraid_event_family ;
 int pmcraid_info (char*,int ) ;

__attribute__((used)) static int pmcraid_netlink_init(void)
{
 int result;

 result = genl_register_family(&pmcraid_event_family);

 if (result)
  return result;

 pmcraid_info("registered NETLINK GENERIC group: %d\n",
       pmcraid_event_family.id);

 return result;
}
