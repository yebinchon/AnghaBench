
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 unsigned char ABORT ;
 int ICR_ASSERT_ACK ;
 int ICR_ASSERT_ATN ;
 int ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 unsigned char NCR5380_read (int ) ;
 int NCR5380_transfer_pio (struct Scsi_Host*,unsigned char*,int*,unsigned char**) ;
 int NCR5380_write (int ,int) ;
 unsigned char PHASE_MASK ;
 unsigned char PHASE_MSGOUT ;
 int PHASE_SR_TO_TCR (unsigned char) ;
 unsigned char SR_REQ ;
 int STATUS_REG ;
 int TARGET_COMMAND_REG ;

__attribute__((used)) static int do_abort (struct Scsi_Host *host)
{
    unsigned char tmp, *msgptr, phase;
    int len;


    NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ATN);
    while (!((tmp = NCR5380_read(STATUS_REG)) & SR_REQ));

    NCR5380_write(TARGET_COMMAND_REG, PHASE_SR_TO_TCR(tmp));

    if ((tmp & PHASE_MASK) != PHASE_MSGOUT) {
 NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ATN |
        ICR_ASSERT_ACK);
 while (NCR5380_read(STATUS_REG) & SR_REQ);
 NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ATN);
    }

    tmp = ABORT;
    msgptr = &tmp;
    len = 1;
    phase = PHASE_MSGOUT;
    NCR5380_transfer_pio (host, &phase, &len, &msgptr);






    return len ? -1 : 0;
}
