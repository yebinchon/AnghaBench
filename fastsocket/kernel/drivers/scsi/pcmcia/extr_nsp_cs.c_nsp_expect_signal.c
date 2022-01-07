
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int io_port; } ;


 unsigned char BUSMON_PHASE_MASK ;
 int IRQSTATUS ;
 unsigned char IRQSTATUS_SCSI ;
 int SCSIBUSMON ;
 unsigned char nsp_index_read (unsigned int,int ) ;
 unsigned char nsp_read (unsigned int,int ) ;

__attribute__((used)) static int nsp_expect_signal(struct scsi_cmnd *SCpnt,
        unsigned char current_phase,
        unsigned char mask)
{
 unsigned int base = SCpnt->device->host->io_port;
 int time_out;
 unsigned char phase, i_src;



 time_out = 100;
 do {
  phase = nsp_index_read(base, SCSIBUSMON);
  if (phase == 0xff) {

   return -1;
  }
  i_src = nsp_read(base, IRQSTATUS);
  if (i_src & IRQSTATUS_SCSI) {

   return 0;
  }
  if ((phase & mask) != 0 && (phase & BUSMON_PHASE_MASK) == current_phase) {

   return 1;
  }
 } while(time_out-- != 0);


 return -1;
}
