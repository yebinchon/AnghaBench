
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ (* init ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ func; TYPE_4__* pcidev; scalar_t__ mem_ptr; int mem_addr; int host_num; } ;
typedef TYPE_2__ ips_ha_t ;
struct TYPE_8__ {int irq; } ;


 int DEBUG_VAR (int,char*,int ,int ,int ,int ) ;
 int IPS_ONE_SEC ;
 scalar_t__ IPS_REG_I960_IDR ;
 int MDELAY (int) ;
 int METHOD_TRACE (char*,int) ;
 int ips_name ;
 int pci_read_config_byte (TYPE_4__*,int,int *) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ips_reset_morpheus(ips_ha_t * ha)
{
 int reset_counter;
 uint8_t junk;

 METHOD_TRACE("ips_reset_morpheus", 1);

 DEBUG_VAR(1, "(%s%d) ips_reset_morpheus: mem addr: %x, irq: %d",
    ips_name, ha->host_num, ha->mem_addr, ha->pcidev->irq);

 reset_counter = 0;

 while (reset_counter < 2) {
  reset_counter++;

  writel(0x80000000, ha->mem_ptr + IPS_REG_I960_IDR);


  MDELAY(5 * IPS_ONE_SEC);


  pci_read_config_byte(ha->pcidev, 4, &junk);

  if ((*ha->func.init) (ha))
   break;
  else if (reset_counter >= 2) {

   return (0);
  }
 }

 return (1);
}
