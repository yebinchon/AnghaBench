
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {scalar_t__ ssid; } ;
struct TYPE_3__ {scalar_t__ st; scalar_t__ dev; scalar_t__ dnv; } ;
struct schib {TYPE_1__ pmcw; } ;
struct TYPE_4__ {scalar_t__ devno; scalar_t__ ssid; } ;
struct sch_match_id {scalar_t__ rc; struct subchannel_id schid; TYPE_2__ devid; } ;


 int ENXIO ;
 scalar_t__ SUBCHANNEL_TYPE_IO ;
 scalar_t__ stsch_reset (struct subchannel_id,struct schib*) ;

__attribute__((used)) static int __reipl_subchannel_match(struct subchannel_id schid, void *data)
{
 struct schib schib;
 struct sch_match_id *match_id = data;

 if (stsch_reset(schid, &schib))
  return -ENXIO;
 if ((schib.pmcw.st == SUBCHANNEL_TYPE_IO) && schib.pmcw.dnv &&
     (schib.pmcw.dev == match_id->devid.devno) &&
     (schid.ssid == match_id->devid.ssid)) {
  match_id->schid = schid;
  match_id->rc = 0;
  return 1;
 }
 return 0;
}
