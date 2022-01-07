
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int phase; int this_residual; int buffers_residual; int * ptr; TYPE_3__* buffer; } ;
struct scsi_cmnd {int result; TYPE_1__ SCp; } ;
struct TYPE_13__ {unsigned short base; int rd; int dp; int mode; scalar_t__ jstart; scalar_t__ failed; } ;
typedef TYPE_2__ imm_struct ;
struct TYPE_14__ {int length; } ;


 int CONNECT_EPP_MAYBE ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 scalar_t__ HZ ;
 int IMM_NIBBLE ;
 int IMM_PS2 ;
 unsigned char STATUS_MASK ;
 int imm_completion (struct scsi_cmnd*) ;
 int imm_connect (TYPE_2__*,int ) ;
 int imm_fail (TYPE_2__*,int ) ;
 int imm_in (TYPE_2__*,unsigned char*,int) ;
 int imm_negotiate (TYPE_2__*) ;
 int imm_select (TYPE_2__*,int ) ;
 int imm_send_command (struct scsi_cmnd*) ;
 unsigned char imm_wait (TYPE_2__*) ;
 int jiffies ;
 int printk (char*) ;
 int r_str (unsigned short) ;
 int scmd_id (struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 TYPE_3__* scsi_sglist (struct scsi_cmnd*) ;
 int * sg_virt (TYPE_3__*) ;
 int time_after (int ,scalar_t__) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int imm_engine(imm_struct *dev, struct scsi_cmnd *cmd)
{
 unsigned short ppb = dev->base;
 unsigned char l = 0, h = 0;
 int retv, x;




 if (dev->failed)
  return 0;

 switch (cmd->SCp.phase) {
 case 0:
  if (time_after(jiffies, dev->jstart + HZ)) {




   imm_fail(dev, DID_BUS_BUSY);
   return 0;
  }
  return 1;

 case 1:
  imm_connect(dev, CONNECT_EPP_MAYBE);
  cmd->SCp.phase++;


 case 2:
  if (!imm_select(dev, scmd_id(cmd))) {
   imm_fail(dev, DID_NO_CONNECT);
   return 0;
  }
  cmd->SCp.phase++;


 case 3:
  w_ctr(ppb, 0x0c);
  if (!(r_str(ppb) & 0x80))
   return 1;

  if (!imm_send_command(cmd))
   return 0;
  cmd->SCp.phase++;


 case 4:
  if (scsi_bufflen(cmd)) {
   cmd->SCp.buffer = scsi_sglist(cmd);
   cmd->SCp.this_residual = cmd->SCp.buffer->length;
   cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
  } else {
   cmd->SCp.buffer = ((void*)0);
   cmd->SCp.this_residual = 0;
   cmd->SCp.ptr = ((void*)0);
  }
  cmd->SCp.buffers_residual = scsi_sg_count(cmd) - 1;
  cmd->SCp.phase++;
  if (cmd->SCp.this_residual & 0x01)
   cmd->SCp.this_residual++;

 case 5:

  w_ctr(ppb, 0x0c);
  if (!(r_str(ppb) & 0x80))
   return 1;


  x = (r_str(ppb) & 0xb8);
  dev->rd = (x & 0x10) ? 1 : 0;
  dev->dp = (x & 0x20) ? 0 : 1;

  if ((dev->dp) && (dev->rd))
   if (imm_negotiate(dev))
    return 0;
  cmd->SCp.phase++;


 case 6:

  w_ctr(ppb, 0x0c);
  if (!(r_str(ppb) & 0x80))
   return 1;

  if (dev->dp) {
   retv = imm_completion(cmd);
   if (retv == -1)
    return 0;
   if (retv == 0)
    return 1;
  }
  cmd->SCp.phase++;


 case 7:
  if ((dev->dp) && (dev->rd)) {
   if ((dev->mode == IMM_NIBBLE) || (dev->mode == IMM_PS2)) {
    w_ctr(ppb, 0x4);
    w_ctr(ppb, 0xc);
    w_ctr(ppb, 0xe);
    w_ctr(ppb, 0x4);
   }
  }
  cmd->SCp.phase++;


 case 8:

  if (imm_wait(dev) != (unsigned char) 0xb8) {
   imm_fail(dev, DID_ERROR);
   return 0;
  }
  if (imm_negotiate(dev))
   return 0;
  if (imm_in(dev, &l, 1)) {

   if (imm_wait(dev) == (unsigned char) 0xb8)
    imm_in(dev, &h, 1);
   cmd->result = (DID_OK << 16) + (l & STATUS_MASK);
  }
  if ((dev->mode == IMM_NIBBLE) || (dev->mode == IMM_PS2)) {
   w_ctr(ppb, 0x4);
   w_ctr(ppb, 0xc);
   w_ctr(ppb, 0xe);
   w_ctr(ppb, 0x4);
  }
  return 0;
  break;

 default:
  printk("imm: Invalid scsi phase\n");
 }
 return 0;
}
