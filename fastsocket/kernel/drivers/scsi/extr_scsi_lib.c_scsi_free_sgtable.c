
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_data_buffer {int table; } ;


 int SCSI_MAX_SG_SEGMENTS ;
 int __sg_free_table (int *,int ,int ) ;
 int scsi_sg_free ;

__attribute__((used)) static void scsi_free_sgtable(struct scsi_data_buffer *sdb)
{
 __sg_free_table(&sdb->table, SCSI_MAX_SG_SEGMENTS, scsi_sg_free);
}
