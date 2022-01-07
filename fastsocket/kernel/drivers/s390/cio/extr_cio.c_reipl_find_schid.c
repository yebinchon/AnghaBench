
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct ccw_dev_id {int dummy; } ;
struct sch_match_id {int rc; struct subchannel_id schid; struct ccw_dev_id devid; } ;


 int ENODEV ;
 int __reipl_subchannel_match ;
 int for_each_subchannel (int ,struct sch_match_id*) ;

__attribute__((used)) static int reipl_find_schid(struct ccw_dev_id *devid,
       struct subchannel_id *schid)
{
 struct sch_match_id match_id;

 match_id.devid = *devid;
 match_id.rc = -ENODEV;
 for_each_subchannel(__reipl_subchannel_match, &match_id);
 if (match_id.rc == 0)
  *schid = match_id.schid;
 return match_id.rc;
}
