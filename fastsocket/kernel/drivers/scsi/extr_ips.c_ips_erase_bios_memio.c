
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* pcidev; scalar_t__ mem_ptr; } ;
typedef TYPE_2__ ips_ha_t ;
struct TYPE_4__ {scalar_t__ revision; } ;


 scalar_t__ IPS_REG_FLAP ;
 scalar_t__ IPS_REG_FLDP ;
 scalar_t__ IPS_REVID_TROMBONE64 ;
 int MDELAY (int) ;
 int METHOD_TRACE (char*,int) ;
 int readb (scalar_t__) ;
 int udelay (int) ;
 int writeb (int,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
ips_erase_bios_memio(ips_ha_t * ha)
{
 int timeout;
 uint8_t status;

 METHOD_TRACE("ips_erase_bios_memio", 1);

 status = 0;


 writel(0, ha->mem_ptr + IPS_REG_FLAP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);

 writeb(0x50, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);


 writeb(0x20, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);


 writeb(0xD0, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);


 writeb(0x70, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);

 timeout = 80000;

 while (timeout > 0) {
  if (ha->pcidev->revision == IPS_REVID_TROMBONE64) {
   writel(0, ha->mem_ptr + IPS_REG_FLAP);
   udelay(25);
  }

  status = readb(ha->mem_ptr + IPS_REG_FLDP);

  if (status & 0x80)
   break;

  MDELAY(1);
  timeout--;
 }


 if (timeout <= 0) {



  writeb(0xB0, ha->mem_ptr + IPS_REG_FLDP);
  if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
   udelay(25);


  timeout = 10000;
  while (timeout > 0) {
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64) {
    writel(0, ha->mem_ptr + IPS_REG_FLAP);
    udelay(25);
   }

   status = readb(ha->mem_ptr + IPS_REG_FLDP);

   if (status & 0xC0)
    break;

   MDELAY(1);
   timeout--;
  }

  return (1);
 }


 if (status & 0x08)

  return (1);


 if (status & 0x30)

  return (1);



 writeb(0x50, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);


 writeb(0xFF, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);

 return (0);
}
