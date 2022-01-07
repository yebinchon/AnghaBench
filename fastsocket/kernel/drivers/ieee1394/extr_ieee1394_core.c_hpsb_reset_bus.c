
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsb_host {TYPE_1__* driver; int in_bus_reset; } ;
struct TYPE_2__ {int (* devctl ) (struct hpsb_host*,int ,int) ;} ;


 int RESET_BUS ;
 int stub1 (struct hpsb_host*,int ,int) ;

int hpsb_reset_bus(struct hpsb_host *host, int type)
{
 if (!host->in_bus_reset) {
  host->driver->devctl(host, RESET_BUS, type);
  return 0;
 } else {
  return 1;
 }
}
