
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* product; scalar_t__* version; scalar_t__* vendor; } ;


 int DMI_BIOS_VERSION ;
 int DMI_PRODUCT_NAME ;
 int DMI_SYS_VENDOR ;
 int DRV_VER ;
 int EINVAL ;
 TYPE_1__* bios_cfg ;
 TYPE_1__* bios_tbl ;
 char* dmi_get_system_info (int ) ;
 char* force_bios ;
 char* force_product ;
 scalar_t__ kernelmode ;
 int pr_err (char*,char const*,char const*,char const*) ;
 int pr_info (char*,char const*,...) ;
 int pr_notice (char*) ;
 int strcmp (scalar_t__*,char const*) ;
 unsigned long strlen (char const*) ;
 int strncmp (char const*,char const*,unsigned long) ;
 scalar_t__ verbose ;

__attribute__((used)) static int acerhdf_check_hardware(void)
{
 char const *vendor, *version, *product;
 int i;
 unsigned long prod_len = 0;


 vendor = dmi_get_system_info(DMI_SYS_VENDOR);
 version = dmi_get_system_info(DMI_BIOS_VERSION);
 product = dmi_get_system_info(DMI_PRODUCT_NAME);


 pr_info("Acer Aspire One Fan driver, v.%s\n", DRV_VER);

 if (force_bios[0]) {
  version = force_bios;
  pr_info("forcing BIOS version: %s\n", version);
  kernelmode = 0;
 }

 if (force_product[0]) {
  product = force_product;
  pr_info("forcing BIOS product: %s\n", product);
  kernelmode = 0;
 }

 prod_len = strlen(product);

 if (verbose)
  pr_info("BIOS info: %s %s, product: %s\n",
   vendor, version, product);


 for (i = 0; bios_tbl[i].version[0]; i++) {
  if (strlen(bios_tbl[i].product) >= prod_len &&
      !strncmp(bios_tbl[i].product, product,
      strlen(bios_tbl[i].product)) &&
      !strcmp(bios_tbl[i].vendor, vendor) &&
      !strcmp(bios_tbl[i].version, version)) {
   bios_cfg = &bios_tbl[i];
   break;
  }
 }

 if (!bios_cfg) {
  pr_err("unknown (unsupported) BIOS version %s/%s/%s, "
   "please report, aborting!\n", vendor, product, version);
  return -EINVAL;
 }





 if (!kernelmode) {
  pr_notice("Fan control off, to enable do:\n");
  pr_notice("echo -n \"enabled\" > "
   "/sys/class/thermal/thermal_zone0/mode\n");
 }

 return 0;
}
