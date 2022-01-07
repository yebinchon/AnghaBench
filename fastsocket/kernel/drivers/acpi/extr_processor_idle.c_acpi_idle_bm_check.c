
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ bmisx; } ;
struct TYPE_4__ {TYPE_1__ piix4; } ;


 int ACPI_BITREG_BUS_MASTER_STATUS ;
 int acpi_read_bit_register (int ,int*) ;
 int acpi_write_bit_register (int ,int) ;
 scalar_t__ bm_check_disable ;
 TYPE_2__ errata ;
 int inb_p (scalar_t__) ;

__attribute__((used)) static int acpi_idle_bm_check(void)
{
 u32 bm_status = 0;

 if (bm_check_disable)
  return 0;

 acpi_read_bit_register(ACPI_BITREG_BUS_MASTER_STATUS, &bm_status);
 if (bm_status)
  acpi_write_bit_register(ACPI_BITREG_BUS_MASTER_STATUS, 1);





 else if (errata.piix4.bmisx) {
  if ((inb_p(errata.piix4.bmisx + 0x02) & 0x01)
      || (inb_p(errata.piix4.bmisx + 0x0A) & 0x01))
   bm_status = 1;
 }
 return bm_status;
}
