
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {TYPE_1__* pdev; } ;
struct fw_blob {int * fw; int name; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int dev; } ;


 size_t FW_ISP2031 ;
 size_t FW_ISP21XX ;
 size_t FW_ISP22XX ;
 size_t FW_ISP2300 ;
 size_t FW_ISP2322 ;
 size_t FW_ISP24XX ;
 size_t FW_ISP25XX ;
 size_t FW_ISP8031 ;
 size_t FW_ISP81XX ;
 size_t FW_ISP82XX ;
 scalar_t__ IS_QLA2031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2300 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2312 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2322 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA24XX_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA6312 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA6322 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA8031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_log (int ,TYPE_2__*,int,char*,int ) ;
 int ql_log_warn ;
 struct fw_blob* qla_fw_blobs ;
 int qla_fw_lock ;
 scalar_t__ request_firmware (int **,int ,int *) ;

struct fw_blob *
qla2x00_request_firmware(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 struct fw_blob *blob;

 if (IS_QLA2100(ha)) {
  blob = &qla_fw_blobs[FW_ISP21XX];
 } else if (IS_QLA2200(ha)) {
  blob = &qla_fw_blobs[FW_ISP22XX];
 } else if (IS_QLA2300(ha) || IS_QLA2312(ha) || IS_QLA6312(ha)) {
  blob = &qla_fw_blobs[FW_ISP2300];
 } else if (IS_QLA2322(ha) || IS_QLA6322(ha)) {
  blob = &qla_fw_blobs[FW_ISP2322];
 } else if (IS_QLA24XX_TYPE(ha)) {
  blob = &qla_fw_blobs[FW_ISP24XX];
 } else if (IS_QLA25XX(ha)) {
  blob = &qla_fw_blobs[FW_ISP25XX];
 } else if (IS_QLA81XX(ha)) {
  blob = &qla_fw_blobs[FW_ISP81XX];
 } else if (IS_QLA82XX(ha)) {
  blob = &qla_fw_blobs[FW_ISP82XX];
 } else if (IS_QLA2031(ha)) {
  blob = &qla_fw_blobs[FW_ISP2031];
 } else if (IS_QLA8031(ha)) {
  blob = &qla_fw_blobs[FW_ISP8031];
 } else {
  return ((void*)0);
 }

 mutex_lock(&qla_fw_lock);
 if (blob->fw)
  goto out;

 if (request_firmware(&blob->fw, blob->name, &ha->pdev->dev)) {
  ql_log(ql_log_warn, vha, 0x0063,
      "Failed to load firmware image (%s).\n", blob->name);
  blob->fw = ((void*)0);
  blob = ((void*)0);
  goto out;
 }

out:
 mutex_unlock(&qla_fw_lock);
 return blob;
}
