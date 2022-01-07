
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tgt_cmd {int bio; } ;


 int blk_rq_unmap_user (int ) ;

__attribute__((used)) static void scsi_unmap_user_pages(struct scsi_tgt_cmd *tcmd)
{
 blk_rq_unmap_user(tcmd->bio);
}
