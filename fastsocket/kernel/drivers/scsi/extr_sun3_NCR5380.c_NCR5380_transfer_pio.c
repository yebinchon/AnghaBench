
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CURRENT_SCSI_DATA_REG ;
 int HOSTNO ;
 int HSH_PRINTK (char*,int ) ;
 unsigned char ICR_ASSERT_ACK ;
 unsigned char ICR_ASSERT_ATN ;
 unsigned char ICR_ASSERT_DATA ;
 unsigned char ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 unsigned char NCR5380_read (int ) ;
 int NCR5380_write (int ,unsigned char) ;
 int NCR_PRINT (int ) ;
 int NCR_PRINT_PHASE (int ) ;
 int NDEBUG_PIO ;
 int OUTPUT_DATA_REG ;
 unsigned char PHASE_MASK ;
 unsigned char PHASE_MSGIN ;
 unsigned char PHASE_MSGOUT ;
 unsigned char PHASE_SR_TO_TCR (unsigned char) ;
 unsigned char PHASE_UNKNOWN ;
 int PIO_PRINTK (char*,int ,...) ;
 unsigned char SR_IO ;
 unsigned char SR_MSG ;
 unsigned char SR_REQ ;
 int STATUS_REG ;
 int TARGET_COMMAND_REG ;

__attribute__((used)) static int NCR5380_transfer_pio( struct Scsi_Host *instance,
     unsigned char *phase, int *count,
     unsigned char **data)
{
    register unsigned char p = *phase, tmp;
    register int c = *count;
    register unsigned char *d = *data;







    NCR5380_write(TARGET_COMMAND_REG, PHASE_SR_TO_TCR(p));

    do {




 while (!((tmp = NCR5380_read(STATUS_REG)) & SR_REQ));

 HSH_PRINTK("scsi%d: REQ detected\n", HOSTNO);


 if ((tmp & PHASE_MASK) != p) {
     PIO_PRINTK("scsi%d: phase mismatch\n", HOSTNO);
     NCR_PRINT_PHASE(NDEBUG_PIO);
     break;
 }


 if (!(p & SR_IO))
     NCR5380_write(OUTPUT_DATA_REG, *d);
 else
     *d = NCR5380_read(CURRENT_SCSI_DATA_REG);

 ++d;
 if (!(p & SR_IO)) {
     if (!((p & SR_MSG) && c > 1)) {
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE |
      ICR_ASSERT_DATA);
  NCR_PRINT(NDEBUG_PIO);
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE |
   ICR_ASSERT_DATA | ICR_ASSERT_ACK);
     } else {
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE |
      ICR_ASSERT_DATA | ICR_ASSERT_ATN);
  NCR_PRINT(NDEBUG_PIO);
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE |
      ICR_ASSERT_DATA | ICR_ASSERT_ATN | ICR_ASSERT_ACK);
     }
 } else {
     NCR_PRINT(NDEBUG_PIO);
     NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ACK);
 }

 while (NCR5380_read(STATUS_REG) & SR_REQ);

 HSH_PRINTK("scsi%d: req false, handshake complete\n", HOSTNO);
 if (!(p == PHASE_MSGIN && c == 1)) {
     if (p == PHASE_MSGOUT && c > 1)
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ATN);
     else
  NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE);
 }
    } while (--c);

    PIO_PRINTK("scsi%d: residual %d\n", HOSTNO, c);

    *count = c;
    *data = d;
    tmp = NCR5380_read(STATUS_REG);



    if ((tmp & SR_REQ) || (p == PHASE_MSGIN && c == 0))
 *phase = tmp & PHASE_MASK;
    else
 *phase = PHASE_UNKNOWN;

    if (!c || (*phase == p))
 return 0;
    else
 return -1;
}
