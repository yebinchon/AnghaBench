
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product_id; int vendor_id; } ;
struct ipr_vpd {int sn; TYPE_1__ vpids; } ;


 int IPR_PROD_ID_LEN ;
 int IPR_SERIAL_NUM_LEN ;
 int IPR_VENDOR_ID_LEN ;
 int ipr_err (char*,char*) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void ipr_log_vpd(struct ipr_vpd *vpd)
{
 char buffer[IPR_VENDOR_ID_LEN + IPR_PROD_ID_LEN
      + IPR_SERIAL_NUM_LEN];

 memcpy(buffer, vpd->vpids.vendor_id, IPR_VENDOR_ID_LEN);
 memcpy(buffer + IPR_VENDOR_ID_LEN, vpd->vpids.product_id,
        IPR_PROD_ID_LEN);
 buffer[IPR_VENDOR_ID_LEN + IPR_PROD_ID_LEN] = '\0';
 ipr_err("Vendor/Product ID: %s\n", buffer);

 memcpy(buffer, vpd->sn, IPR_SERIAL_NUM_LEN);
 buffer[IPR_SERIAL_NUM_LEN] = '\0';
 ipr_err("    Serial Number: %s\n", buffer);
}
