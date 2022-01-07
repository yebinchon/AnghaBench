
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wd33c93_regs ;
typedef int uchar ;
struct WD33C93_hostdata {int clock_freq; int default_sx_per; scalar_t__ chip; scalar_t__ fast; void* microcode; int sx_table; int regs; } ;
struct Scsi_Host {unsigned long base; int this_id; scalar_t__ hostdata; } ;


 int ASR_BSY ;
 int ASR_INT ;
 int CTRL_EDI ;
 int CTRL_IDI ;
 int CTRL_POLLED ;
 scalar_t__ C_UNKNOWN_CHIP ;
 scalar_t__ C_WD33C93 ;
 scalar_t__ C_WD33C93A ;
 scalar_t__ C_WD33C93B ;
 int DEFAULT_SX_OFF ;
 int OWNID_EAF ;
 int OWNID_RAF ;
 int TIMEOUT_PERIOD_VALUE ;
 int WD_CDB_1 ;
 int WD_CMD_RESET ;
 int WD_COMMAND ;
 int WD_CONTROL ;
 int WD_OWN_ID ;
 int WD_QUEUE_TAG ;
 int WD_SCSI_STATUS ;
 int WD_SYNCHRONOUS_TRANSFER ;
 int WD_TIMEOUT_PERIOD ;
 int calc_sync_xfer (int,int ,int ,int ) ;
 int read_aux_stat (int const) ;
 void* read_wd33c93 (int const,int ) ;
 int udelay (int) ;
 int write_wd33c93 (int const,int ,int) ;

__attribute__((used)) static void
reset_wd33c93(struct Scsi_Host *instance)
{
 struct WD33C93_hostdata *hostdata =
     (struct WD33C93_hostdata *) instance->hostdata;
 const wd33c93_regs regs = hostdata->regs;
 uchar sr;
 write_wd33c93(regs, WD_OWN_ID, OWNID_EAF | OWNID_RAF |
        instance->this_id | hostdata->clock_freq);
 write_wd33c93(regs, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
 write_wd33c93(regs, WD_SYNCHRONOUS_TRANSFER,
        calc_sync_xfer(hostdata->default_sx_per / 4,
         DEFAULT_SX_OFF, 0, hostdata->sx_table));
 write_wd33c93(regs, WD_COMMAND, WD_CMD_RESET);






 while (!(read_aux_stat(regs) & ASR_INT))
  ;
 sr = read_wd33c93(regs, WD_SCSI_STATUS);

 hostdata->microcode = read_wd33c93(regs, WD_CDB_1);
 if (sr == 0x00)
  hostdata->chip = C_WD33C93;
 else if (sr == 0x01) {
  write_wd33c93(regs, WD_QUEUE_TAG, 0xa5);
  sr = read_wd33c93(regs, WD_QUEUE_TAG);
  if (sr == 0xa5) {
   hostdata->chip = C_WD33C93B;
   write_wd33c93(regs, WD_QUEUE_TAG, 0);
  } else
   hostdata->chip = C_WD33C93A;
 } else
  hostdata->chip = C_UNKNOWN_CHIP;

 if (hostdata->chip != C_WD33C93B)
  hostdata->fast = 0;

 write_wd33c93(regs, WD_TIMEOUT_PERIOD, TIMEOUT_PERIOD_VALUE);
 write_wd33c93(regs, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
}
