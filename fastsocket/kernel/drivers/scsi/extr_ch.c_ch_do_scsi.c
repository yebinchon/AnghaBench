
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int sense_key; } ;
struct TYPE_3__ {int unit_attention; int name; int device; } ;
typedef TYPE_1__ scsi_changer ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DRIVER_SENSE ;
 int HZ ;
 unsigned char INITIALIZE_ELEMENT_STATUS ;
 int MAX_RETRIES ;

 int __scsi_print_command (unsigned char*) ;
 int ch_find_errno (struct scsi_sense_hdr*) ;
 scalar_t__ debug ;
 int dprintk (char*,...) ;
 int driver_byte (int) ;
 int scsi_execute_req (int ,unsigned char*,int,void*,unsigned int,struct scsi_sense_hdr*,int,int ,int *) ;
 int scsi_print_sense_hdr (int ,struct scsi_sense_hdr*) ;
 int timeout_init ;
 int timeout_move ;

__attribute__((used)) static int
ch_do_scsi(scsi_changer *ch, unsigned char *cmd,
    void *buffer, unsigned buflength,
    enum dma_data_direction direction)
{
 int errno, retries = 0, timeout, result;
 struct scsi_sense_hdr sshdr;

 timeout = (cmd[0] == INITIALIZE_ELEMENT_STATUS)
  ? timeout_init : timeout_move;

 retry:
 errno = 0;
 if (debug) {
  dprintk("command: ");
  __scsi_print_command(cmd);
 }

        result = scsi_execute_req(ch->device, cmd, direction, buffer,
      buflength, &sshdr, timeout * HZ,
      MAX_RETRIES, ((void*)0));

 dprintk("result: 0x%x\n",result);
 if (driver_byte(result) & DRIVER_SENSE) {
  if (debug)
   scsi_print_sense_hdr(ch->name, &sshdr);
  errno = ch_find_errno(&sshdr);

  switch(sshdr.sense_key) {
  case 128:
   ch->unit_attention = 1;
   if (retries++ < 3)
    goto retry;
   break;
  }
 }
 return errno;
}
