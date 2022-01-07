
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nents; } ;
struct scsi_data_buffer {TYPE_3__ table; } ;
struct scsi_cmnd {struct scsi_data_buffer* prot_sdb; TYPE_2__* request; struct scsi_data_buffer sdb; } ;
struct TYPE_5__ {TYPE_1__* next_rq; } ;
struct TYPE_4__ {struct scsi_data_buffer* special; } ;


 int kmem_cache_free (int ,struct scsi_data_buffer*) ;
 int memset (struct scsi_data_buffer*,int ,int) ;
 scalar_t__ scsi_bidi_cmnd (struct scsi_cmnd*) ;
 int scsi_free_sgtable (struct scsi_data_buffer*) ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 int scsi_sdb_cache ;

__attribute__((used)) static void __scsi_release_buffers(struct scsi_cmnd *cmd, int do_bidi_check)
{

 if (cmd->sdb.table.nents)
  scsi_free_sgtable(&cmd->sdb);

 memset(&cmd->sdb, 0, sizeof(cmd->sdb));

 if (do_bidi_check && scsi_bidi_cmnd(cmd)) {
  struct scsi_data_buffer *bidi_sdb =
   cmd->request->next_rq->special;
  scsi_free_sgtable(bidi_sdb);
  kmem_cache_free(scsi_sdb_cache, bidi_sdb);
  cmd->request->next_rq->special = ((void*)0);
 }

 if (scsi_prot_sg_count(cmd))
  scsi_free_sgtable(cmd->prot_sdb);
}
