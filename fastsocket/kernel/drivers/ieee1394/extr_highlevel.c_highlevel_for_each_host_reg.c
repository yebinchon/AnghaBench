
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int id; scalar_t__ update_config_rom; } ;
struct hpsb_highlevel {int name; int (* add_host ) (struct hpsb_host*) ;} ;


 int HPSB_ERR (char*,int ,int ) ;
 scalar_t__ hpsb_update_config_rom_image (struct hpsb_host*) ;
 int stub1 (struct hpsb_host*) ;

__attribute__((used)) static int highlevel_for_each_host_reg(struct hpsb_host *host, void *__data)
{
 struct hpsb_highlevel *hl = __data;

 hl->add_host(host);

 if (host->update_config_rom && hpsb_update_config_rom_image(host) < 0)
  HPSB_ERR("Failed to generate Configuration ROM image for host "
    "%s-%d", hl->name, host->id);
 return 0;
}
