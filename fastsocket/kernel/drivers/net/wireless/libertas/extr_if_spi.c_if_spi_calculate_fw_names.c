
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ chip_id; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EAFNOSUPPORT ;
 int IF_SPI_FW_NAME_MAX ;
 TYPE_1__* chip_id_to_device_name ;
 int lbs_pr_err (char*,scalar_t__) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static int if_spi_calculate_fw_names(u16 card_id,
         char *helper_fw, char *main_fw)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(chip_id_to_device_name); ++i) {
  if (card_id == chip_id_to_device_name[i].chip_id)
   break;
 }
 if (i == ARRAY_SIZE(chip_id_to_device_name)) {
  lbs_pr_err("Unsupported chip_id: 0x%02x\n", card_id);
  return -EAFNOSUPPORT;
 }
 snprintf(helper_fw, IF_SPI_FW_NAME_MAX, "libertas/gspi%d_hlp.bin",
   chip_id_to_device_name[i].name);
 snprintf(main_fw, IF_SPI_FW_NAME_MAX, "libertas/gspi%d.bin",
   chip_id_to_device_name[i].name);
 return 0;
}
