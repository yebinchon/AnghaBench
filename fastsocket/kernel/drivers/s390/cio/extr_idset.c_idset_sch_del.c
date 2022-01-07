
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; int ssid; } ;
struct idset {int dummy; } ;


 int idset_del (struct idset*,int ,int ) ;

void idset_sch_del(struct idset *set, struct subchannel_id schid)
{
 idset_del(set, schid.ssid, schid.sch_no);
}
