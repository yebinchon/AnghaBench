
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nasid_t ;
struct TYPE_7__ {int brd_nasid; } ;
typedef TYPE_2__ lboard_t ;
struct TYPE_6__ {int flags; int physid; } ;
struct TYPE_8__ {TYPE_1__ hub_info; } ;
typedef TYPE_3__ klhub_t ;


 int INVALID_NASID ;
 int KLINFO_ENABLE ;
 int KLSTRUCT_HUB ;
 scalar_t__ find_first_component (TYPE_2__*,int ) ;

__attribute__((used)) static nasid_t get_actual_nasid(lboard_t *brd)
{
 klhub_t *hub;

 if (!brd)
  return INVALID_NASID;


 hub = (klhub_t *)find_first_component(brd, KLSTRUCT_HUB);
 if (!hub)
  return INVALID_NASID;
 if (!(hub->hub_info.flags & KLINFO_ENABLE))
  return hub->hub_info.physid;
 else
  return brd->brd_nasid;
}
