
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {char* fw_version; } ;
struct qla_hw_data {TYPE_1__ mr; } ;


 int sprintf (char*,char*,char*) ;

char *
qlafx00_fw_version_str(struct scsi_qla_host *vha, char *str)
{
 struct qla_hw_data *ha = vha->hw;

 sprintf(str, "%s", ha->mr.fw_version);
 return str;
}
