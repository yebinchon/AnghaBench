
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct memory_accessor {scalar_t__ (* read ) (struct memory_accessor*,char*,int ,scalar_t__) ;} ;
typedef int off_t ;
struct TYPE_4__ {TYPE_1__* emac_pdata; } ;
struct TYPE_3__ {char* mac_addr; } ;


 scalar_t__ ETH_ALEN ;
 TYPE_2__ davinci_soc_info ;
 int pr_info (char*,char*) ;
 scalar_t__ stub1 (struct memory_accessor*,char*,int ,scalar_t__) ;

void davinci_get_mac_addr(struct memory_accessor *mem_acc, void *context)
{
 char *mac_addr = davinci_soc_info.emac_pdata->mac_addr;
 off_t offset = (off_t)context;


 if (mem_acc->read(mem_acc, mac_addr, offset, ETH_ALEN) == ETH_ALEN)
  pr_info("Read MAC addr from EEPROM: %pM\n", mac_addr);
}
