
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product_id; int vendor_id; } ;
struct ipr_vpd {int sn; TYPE_1__ vpids; } ;
struct ipr_hostrcb {int dummy; } ;


 int IPR_PROD_ID_LEN ;
 int IPR_SERIAL_NUM_LEN ;
 int IPR_VENDOR_ID_LEN ;
 int ipr_hcam_err (struct ipr_hostrcb*,char*,char*,char*) ;
 int memcpy (char*,int ,int) ;
 int strip_and_pad_whitespace (int,char*) ;

__attribute__((used)) static void ipr_log_vpd_compact(char *prefix, struct ipr_hostrcb *hostrcb,
    struct ipr_vpd *vpd)
{
 char buffer[IPR_VENDOR_ID_LEN + IPR_PROD_ID_LEN + IPR_SERIAL_NUM_LEN + 3];
 int i = 0;

 memcpy(buffer, vpd->vpids.vendor_id, IPR_VENDOR_ID_LEN);
 i = strip_and_pad_whitespace(IPR_VENDOR_ID_LEN - 1, buffer);

 memcpy(&buffer[i], vpd->vpids.product_id, IPR_PROD_ID_LEN);
 i = strip_and_pad_whitespace(i + IPR_PROD_ID_LEN - 1, buffer);

 memcpy(&buffer[i], vpd->sn, IPR_SERIAL_NUM_LEN);
 buffer[IPR_SERIAL_NUM_LEN + i] = '\0';

 ipr_hcam_err(hostrcb, "%s VPID/SN: %s\n", prefix, buffer);
}
