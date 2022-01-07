
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rom; } ;
struct hpsb_host {TYPE_3__* driver; TYPE_2__ csr; } ;
struct TYPE_6__ {int (* devctl ) (struct hpsb_host*,int ,int ) ;int (* set_hw_config_rom ) (struct hpsb_host*,int ) ;} ;
struct TYPE_4__ {int bus_info_data; } ;


 int RESET_BUS ;
 int SHORT_RESET ;
 int stub1 (struct hpsb_host*,int ) ;
 int stub2 (struct hpsb_host*,int ,int ) ;

void hpsb_resume_host(struct hpsb_host *host)
{
 if (host->driver->set_hw_config_rom)
  host->driver->set_hw_config_rom(host,
      host->csr.rom->bus_info_data);
 host->driver->devctl(host, RESET_BUS, SHORT_RESET);
}
