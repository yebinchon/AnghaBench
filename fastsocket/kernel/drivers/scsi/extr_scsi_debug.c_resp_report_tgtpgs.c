
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdebug_dev_info {int channel; TYPE_2__* sdbg_host; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 int DID_REQUEUE ;
 int GFP_ATOMIC ;
 int SDEBUG_MAX_TGTPGS_ARR_SZ ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int min (int,int) ;
 scalar_t__ scsi_debug_vpd_use_hostno ;

__attribute__((used)) static int resp_report_tgtpgs(struct scsi_cmnd * scp,
         struct sdebug_dev_info * devip)
{
 unsigned char *cmd = (unsigned char *)scp->cmnd;
 unsigned char * arr;
 int host_no = devip->sdbg_host->shost->host_no;
 int n, ret, alen, rlen;
 int port_group_a, port_group_b, port_a, port_b;

 alen = ((cmd[6] << 24) + (cmd[7] << 16) + (cmd[8] << 8)
  + cmd[9]);

 arr = kzalloc(SDEBUG_MAX_TGTPGS_ARR_SZ, GFP_ATOMIC);
 if (! arr)
  return DID_REQUEUE << 16;






 port_a = 0x1;
 port_b = 0x2;
 port_group_a = (((host_no + 1) & 0x7f) << 8) +
     (devip->channel & 0x7f);
 port_group_b = (((host_no + 1) & 0x7f) << 8) +
     (devip->channel & 0x7f) + 0x80;




 n = 4;
 if (0 == scsi_debug_vpd_use_hostno) {
     arr[n++] = host_no % 3;
     arr[n++] = 0x0F;
 } else {
     arr[n++] = 0x0;
     arr[n++] = 0x01;
 }
 arr[n++] = (port_group_a >> 8) & 0xff;
 arr[n++] = port_group_a & 0xff;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0x1;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = (port_a >> 8) & 0xff;
 arr[n++] = port_a & 0xff;
 arr[n++] = 3;
 arr[n++] = 0x08;
 arr[n++] = (port_group_b >> 8) & 0xff;
 arr[n++] = port_group_b & 0xff;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0x1;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = (port_b >> 8) & 0xff;
 arr[n++] = port_b & 0xff;

 rlen = n - 4;
 arr[0] = (rlen >> 24) & 0xff;
 arr[1] = (rlen >> 16) & 0xff;
 arr[2] = (rlen >> 8) & 0xff;
 arr[3] = rlen & 0xff;







 rlen = min(alen,n);
 ret = fill_from_dev_buffer(scp, arr,
       min(rlen, SDEBUG_MAX_TGTPGS_ARR_SZ));
 kfree(arr);
 return ret;
}
