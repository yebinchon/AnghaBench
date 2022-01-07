
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
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
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ips_program_bios_memio(ips_ha_t * ha, char *buffer, uint32_t buffersize,
         uint32_t offset)
{
 int i;
 int timeout;
 uint8_t status = 0;

 METHOD_TRACE("ips_program_bios_memio", 1);

 status = 0;

 for (i = 0; i < buffersize; i++) {

  writel(i + offset, ha->mem_ptr + IPS_REG_FLAP);
  if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
   udelay(25);

  writeb(0x40, ha->mem_ptr + IPS_REG_FLDP);
  if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
   udelay(25);

  writeb(buffer[i], ha->mem_ptr + IPS_REG_FLDP);
  if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
   udelay(25);


  timeout = 1000;
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

  if (timeout == 0) {

   writel(0, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   writeb(0xFF, ha->mem_ptr + IPS_REG_FLDP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   return (1);
  }


  if (status & 0x18) {

   writel(0, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   writeb(0xFF, ha->mem_ptr + IPS_REG_FLDP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   return (1);
  }
 }


 writel(0, ha->mem_ptr + IPS_REG_FLAP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);

 writeb(0xFF, ha->mem_ptr + IPS_REG_FLDP);
 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
  udelay(25);

 return (0);
}
