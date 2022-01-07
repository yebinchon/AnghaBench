
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcc_acpi {int* sinf; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int EINVAL ;
 int EIO ;
 int SINF_AC_CUR_BRIGHT ;
 size_t SINF_AC_MAX_BRIGHT ;
 size_t SINF_AC_MIN_BRIGHT ;
 int SINF_DC_CUR_BRIGHT ;
 size_t SINF_DC_MIN_BRIGHT ;
 int acpi_pcc_retrieve_biosdata (struct pcc_acpi*,int*) ;
 int acpi_pcc_write_sset (struct pcc_acpi*,int ,int) ;
 struct pcc_acpi* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int bl_set_status(struct backlight_device *bd)
{
 struct pcc_acpi *pcc = bl_get_data(bd);
 int bright = bd->props.brightness;
 int rc;

 if (!acpi_pcc_retrieve_biosdata(pcc, pcc->sinf))
  return -EIO;

 if (bright < pcc->sinf[SINF_AC_MIN_BRIGHT])
  bright = pcc->sinf[SINF_AC_MIN_BRIGHT];

 if (bright < pcc->sinf[SINF_DC_MIN_BRIGHT])
  bright = pcc->sinf[SINF_DC_MIN_BRIGHT];

 if (bright < pcc->sinf[SINF_AC_MIN_BRIGHT] ||
     bright > pcc->sinf[SINF_AC_MAX_BRIGHT])
  return -EINVAL;

 rc = acpi_pcc_write_sset(pcc, SINF_AC_CUR_BRIGHT, bright);
 if (rc < 0)
  return rc;

 return acpi_pcc_write_sset(pcc, SINF_DC_CUR_BRIGHT, bright);
}
