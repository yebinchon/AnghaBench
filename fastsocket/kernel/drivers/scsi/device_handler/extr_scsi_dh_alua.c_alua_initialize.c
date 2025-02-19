
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_dh_data {int dummy; } ;


 int SCSI_DH_OK ;
 int alua_check_tpgs (struct scsi_device*,struct alua_dh_data*) ;
 int alua_rtpg (struct scsi_device*,struct alua_dh_data*) ;
 int alua_vpd_inquiry (struct scsi_device*,struct alua_dh_data*) ;

__attribute__((used)) static int alua_initialize(struct scsi_device *sdev, struct alua_dh_data *h)
{
 int err;

 err = alua_check_tpgs(sdev, h);
 if (err != SCSI_DH_OK)
  goto out;

 err = alua_vpd_inquiry(sdev, h);
 if (err != SCSI_DH_OK)
  goto out;

 err = alua_rtpg(sdev, h);
 if (err != SCSI_DH_OK)
  goto out;

out:
 return err;
}
