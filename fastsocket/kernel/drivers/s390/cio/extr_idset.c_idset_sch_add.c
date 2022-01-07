
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; int ssid; } ;
struct idset {int dummy; } ;


 int idset_add (struct idset*,int ,int ) ;

void idset_sch_add(struct idset *set, struct subchannel_id schid)
{
 idset_add(set, schid.ssid, schid.sch_no);
}
