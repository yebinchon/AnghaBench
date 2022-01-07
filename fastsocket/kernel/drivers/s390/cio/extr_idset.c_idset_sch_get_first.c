
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int ssid; int sch_no; } ;
struct idset {int dummy; } ;


 int idset_get_first (struct idset*,int*,int*) ;
 int init_subchannel_id (struct subchannel_id*) ;

int idset_sch_get_first(struct idset *set, struct subchannel_id *schid)
{
 int ssid = 0;
 int id = 0;
 int rc;

 rc = idset_get_first(set, &ssid, &id);
 if (rc) {
  init_subchannel_id(schid);
  schid->ssid = ssid;
  schid->sch_no = id;
 }
 return rc;
}
