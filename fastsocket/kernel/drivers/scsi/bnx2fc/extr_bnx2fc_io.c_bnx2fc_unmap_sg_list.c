
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct bnx2fc_cmd {TYPE_1__* bd_tbl; struct scsi_cmnd* sc_cmd; } ;
struct TYPE_2__ {scalar_t__ bd_valid; } ;


 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void bnx2fc_unmap_sg_list(struct bnx2fc_cmd *io_req)
{
 struct scsi_cmnd *sc = io_req->sc_cmd;

 if (io_req->bd_tbl->bd_valid && sc) {
  scsi_dma_unmap(sc);
  io_req->bd_tbl->bd_valid = 0;
 }
}
