
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int * host_scribble; int result; TYPE_1__* device; } ;
struct bfad_s {int dummy; } ;
struct bfad_ioim_s {int dummy; } ;
struct TYPE_2__ {int * host; } ;


 int DID_ERROR ;
 int ScsiResult (int ,int ) ;
 int bfa_trc (struct bfad_s*,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

void
bfa_cb_ioim_abort(void *drv, struct bfad_ioim_s *dio)
{
 struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dio;
 struct bfad_s *bfad = drv;

 cmnd->result = ScsiResult(DID_ERROR, 0);


 if (cmnd->device->host != ((void*)0))
  scsi_dma_unmap(cmnd);

 bfa_trc(bfad, cmnd->result);
 cmnd->host_scribble = ((void*)0);
}
