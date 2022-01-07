
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ssid; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_3__ schid; TYPE_2__ schib; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 int ENODEV ;
 scalar_t__ is_blacklisted (int ,int ) ;

__attribute__((used)) static int cio_check_devno_blacklisted(struct subchannel *sch)
{
 if (is_blacklisted(sch->schid.ssid, sch->schib.pmcw.dev)) {




  CIO_MSG_EVENT(6, "Blacklisted device detected "
         "at devno %04X, subchannel set %x\n",
         sch->schib.pmcw.dev, sch->schid.ssid);
  return -ENODEV;
 }
 return 0;
}
