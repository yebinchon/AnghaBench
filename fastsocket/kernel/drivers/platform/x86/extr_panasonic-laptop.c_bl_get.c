
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int* sinf; } ;
struct backlight_device {int dummy; } ;


 int EIO ;
 size_t SINF_AC_CUR_BRIGHT ;
 int acpi_pcc_retrieve_biosdata (struct pcc_acpi*,int*) ;
 struct pcc_acpi* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int bl_get(struct backlight_device *bd)
{
 struct pcc_acpi *pcc = bl_get_data(bd);

 if (!acpi_pcc_retrieve_biosdata(pcc, pcc->sinf))
  return -EIO;

 return pcc->sinf[SINF_AC_CUR_BRIGHT];
}
