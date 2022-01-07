
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ this_residual; int ptr; TYPE_4__* buffer; int buffers_residual; } ;
struct scsi_cmnd {unsigned char* cmnd; TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_11__ {unsigned short base; unsigned long recon_tmo; } ;
typedef TYPE_3__ ppa_struct ;
struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_9__ {int host; } ;


 int DID_BUS_BUSY ;
 int DID_ERROR ;
 scalar_t__ PPA_BURST_SIZE ;
 unsigned char READ_10 ;
 unsigned char READ_6 ;
 unsigned char WRITE_10 ;
 unsigned char WRITE_6 ;
 unsigned long jiffies ;
 TYPE_3__* ppa_dev (int ) ;
 int ppa_fail (TYPE_3__*,int ) ;
 int ppa_in (TYPE_3__*,int,int) ;
 int ppa_out (TYPE_3__*,int,int) ;
 int r_str (unsigned short) ;
 int sg_virt (TYPE_4__*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int ppa_completion(struct scsi_cmnd *cmd)
{





 ppa_struct *dev = ppa_dev(cmd->device->host);
 unsigned short ppb = dev->base;
 unsigned long start_jiffies = jiffies;

 unsigned char r, v;
 int fast, bulk, status;

 v = cmd->cmnd[0];
 bulk = ((v == READ_6) ||
  (v == READ_10) || (v == WRITE_6) || (v == WRITE_10));





 r = (r_str(ppb) & 0xf0);

 while (r != (unsigned char) 0xf0) {




  if (time_after(jiffies, start_jiffies + 1))
   return 0;

  if ((cmd->SCp.this_residual <= 0)) {
   ppa_fail(dev, DID_ERROR);
   return -1;
  }
  if ((r & 0xc0) != 0xc0) {



   unsigned long k = dev->recon_tmo;
   for (; k && ((r = (r_str(ppb) & 0xf0)) & 0xc0) != 0xc0;
        k--)
    udelay(1);

   if (!k)
    return 0;
  }


  fast = (bulk && (cmd->SCp.this_residual >= PPA_BURST_SIZE))
      ? PPA_BURST_SIZE : 1;

  if (r == (unsigned char) 0xc0)
   status = ppa_out(dev, cmd->SCp.ptr, fast);
  else
   status = ppa_in(dev, cmd->SCp.ptr, fast);

  cmd->SCp.ptr += fast;
  cmd->SCp.this_residual -= fast;

  if (!status) {
   ppa_fail(dev, DID_BUS_BUSY);
   return -1;
  }
  if (cmd->SCp.buffer && !cmd->SCp.this_residual) {

   if (cmd->SCp.buffers_residual--) {
    cmd->SCp.buffer++;
    cmd->SCp.this_residual =
        cmd->SCp.buffer->length;
    cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
   }
  }

  r = (r_str(ppb) & 0xf0);

  if (!(r & 0x80))
   return 0;
 }
 return 1;
}
