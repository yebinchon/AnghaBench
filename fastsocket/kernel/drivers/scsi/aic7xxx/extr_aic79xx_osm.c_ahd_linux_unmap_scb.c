
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct scb {struct scsi_cmnd* io_ctx; } ;
struct ahd_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ahd_sync_sglist (struct ahd_softc*,struct scb*,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void
ahd_linux_unmap_scb(struct ahd_softc *ahd, struct scb *scb)
{
 struct scsi_cmnd *cmd;

 cmd = scb->io_ctx;
 ahd_sync_sglist(ahd, scb, BUS_DMASYNC_POSTWRITE);
 scsi_dma_unmap(cmd);
}
