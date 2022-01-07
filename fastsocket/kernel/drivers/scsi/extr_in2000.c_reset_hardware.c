
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;
struct IN2000_hostdata {int default_sx_per; } ;


 int ASR_INT ;
 int B_FLAG ;
 int CTRL_EDI ;
 int CTRL_IDI ;
 int CTRL_POLLED ;
 int DEFAULT_SX_OFF ;
 int IO_CARD_RESET ;
 int IO_FIFO_READ ;
 int IO_FIFO_WRITE ;
 int IO_HARDWARE ;
 int IO_LED_OFF ;
 int IO_LED_ON ;
 int OWNID_EAF ;
 int OWNID_FS_8 ;
 int OWNID_RAF ;
 int READ_AUX_STAT () ;
 int RESET_CARD_AND_BUS ;
 int TIMEOUT_PERIOD_VALUE ;
 int WD_CMD_RESET ;
 int WD_COMMAND ;
 int WD_CONTROL ;
 int WD_OWN_ID ;
 int WD_QUEUE_TAG ;
 int WD_SCSI_STATUS ;
 int WD_SYNCHRONOUS_TRANSFER ;
 int WD_TIMEOUT_PERIOD ;
 int calc_sync_xfer (int,int ) ;
 int cpu_relax () ;
 int read1_io (int ) ;
 int read_3393 (struct IN2000_hostdata*,int ) ;
 int write1_io (int ,int ) ;
 int write_3393 (struct IN2000_hostdata*,int ,int) ;

__attribute__((used)) static int reset_hardware(struct Scsi_Host *instance, int type)
{
 struct IN2000_hostdata *hostdata;
 int qt, x;

 hostdata = (struct IN2000_hostdata *) instance->hostdata;

 write1_io(0, IO_LED_ON);
 if (type == RESET_CARD_AND_BUS) {
  write1_io(0, IO_CARD_RESET);
  x = read1_io(IO_HARDWARE);
 }
 x = read_3393(hostdata, WD_SCSI_STATUS);
 write_3393(hostdata, WD_OWN_ID, instance->this_id | OWNID_EAF | OWNID_RAF | OWNID_FS_8);
 write_3393(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
 write_3393(hostdata, WD_SYNCHRONOUS_TRANSFER, calc_sync_xfer(hostdata->default_sx_per / 4, DEFAULT_SX_OFF));

 write1_io(0, IO_FIFO_WRITE);
 write1_io(0, IO_FIFO_READ);
 write_3393(hostdata, WD_COMMAND, WD_CMD_RESET);

 while (!(READ_AUX_STAT() & ASR_INT))
  cpu_relax();

 x = read_3393(hostdata, WD_SCSI_STATUS);

 write_3393(hostdata, WD_QUEUE_TAG, 0xa5);
 qt = read_3393(hostdata, WD_QUEUE_TAG);
 if (qt == 0xa5) {
  x |= B_FLAG;
  write_3393(hostdata, WD_QUEUE_TAG, 0);
 }
 write_3393(hostdata, WD_TIMEOUT_PERIOD, TIMEOUT_PERIOD_VALUE);
 write_3393(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
 write1_io(0, IO_LED_OFF);
 return x;
}
