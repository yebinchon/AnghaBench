
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u32_le ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_11__ {void* len; void* addr; } ;
typedef TYPE_5__ nsp32_sgtable ;
struct TYPE_12__ {int cur_entry; TYPE_4__* cur_lunt; } ;
typedef TYPE_6__ nsp32_hw_data ;
struct TYPE_10__ {int sg_num; TYPE_3__* sglun; } ;
struct TYPE_9__ {TYPE_5__* sgt; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;


 int KERN_ERR ;
 int NSP32_DEBUG_SGLIST ;
 unsigned int SGTEND ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (void*) ;
 int nsp32_dbg (int ,char*,unsigned int) ;
 int nsp32_msg (int ,char*) ;
 unsigned int scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,unsigned int) ;

__attribute__((used)) static void nsp32_adjust_busfree(struct scsi_cmnd *SCpnt, unsigned int s_sacklen)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 int old_entry = data->cur_entry;
 int new_entry;
 int sg_num = data->cur_lunt->sg_num;
 nsp32_sgtable *sgt = data->cur_lunt->sglun->sgt;
 unsigned int restlen, sentlen;
 u32_le len, addr;

 nsp32_dbg(NSP32_DEBUG_SGLIST, "old resid=0x%x", scsi_get_resid(SCpnt));


 s_sacklen -= le32_to_cpu(sgt[old_entry].addr) & 3;





 sentlen = 0;
 for (new_entry = old_entry; new_entry < sg_num; new_entry++) {
  sentlen += (le32_to_cpu(sgt[new_entry].len) & ~SGTEND);
  if (sentlen > s_sacklen) {
   break;
  }
 }


 if (new_entry == sg_num) {
  goto last;
 }

 if (sentlen == s_sacklen) {



 }


 restlen = sentlen - s_sacklen;


 len = le32_to_cpu(sgt[new_entry].len);
 addr = le32_to_cpu(sgt[new_entry].addr);
 addr += (len - restlen);
 sgt[new_entry].addr = cpu_to_le32(addr);
 sgt[new_entry].len = cpu_to_le32(restlen);


 data->cur_entry = new_entry;

 return;

 last:
 if (scsi_get_resid(SCpnt) < sentlen) {
  nsp32_msg(KERN_ERR, "resid underflow");
 }

 scsi_set_resid(SCpnt, scsi_get_resid(SCpnt) - sentlen);
 nsp32_dbg(NSP32_DEBUG_SGLIST, "new resid=0x%x", scsi_get_resid(SCpnt));



 return;
}
