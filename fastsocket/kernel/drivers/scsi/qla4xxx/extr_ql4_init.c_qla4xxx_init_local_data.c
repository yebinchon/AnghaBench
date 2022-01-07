
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int aen_q_count; } ;


 int MAX_AEN_ENTRIES ;

__attribute__((used)) static void qla4xxx_init_local_data(struct scsi_qla_host *ha)
{

 ha->aen_q_count = MAX_AEN_ENTRIES;
}
