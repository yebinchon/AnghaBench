
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw; } ;


 int FW_BLOBS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* qla_fw_blobs ;
 int qla_fw_lock ;
 int release_firmware (int ) ;

__attribute__((used)) static void
qla2x00_release_firmware(void)
{
 int idx;

 mutex_lock(&qla_fw_lock);
 for (idx = 0; idx < FW_BLOBS; idx++)
  release_firmware(qla_fw_blobs[idx].fw);
 mutex_unlock(&qla_fw_lock);
}
