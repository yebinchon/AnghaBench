
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdebug_dev_info {scalar_t__ lun; int channel; int target; scalar_t__ wlun; TYPE_2__* sdbg_host; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 scalar_t__ DEV_REMOVEABLE (int) ;
 int DID_REQUEUE ;
 int GFP_ATOMIC ;
 int ILLEGAL_REQUEST ;
 int INVALID_FIELD_IN_CDB ;
 int SDEBUG_LONG_INQ_SZ ;
 int SDEBUG_MAX_INQ_ARR_SZ ;
 scalar_t__ SD_DIF_TYPE3_PROTECTION ;
 int check_condition_result ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 char* inq_product_id ;
 char* inq_product_rev ;
 char* inq_vendor_id ;
 unsigned char inquiry_evpd_83 (unsigned char*,int,int,int,char*,int) ;
 unsigned char inquiry_evpd_84 (unsigned char*) ;
 unsigned char inquiry_evpd_85 (unsigned char*) ;
 unsigned char inquiry_evpd_88 (unsigned char*,int) ;
 int inquiry_evpd_89 (unsigned char*) ;
 unsigned char inquiry_evpd_b0 (unsigned char*) ;
 unsigned char inquiry_evpd_b1 (unsigned char*) ;
 unsigned char inquiry_evpd_b2 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (unsigned char*,char*,int) ;
 int min (int,int) ;
 int mk_sense_buffer (struct sdebug_dev_info*,int ,int ,int ) ;
 int scnprintf (char*,int,char*,int) ;
 scalar_t__ scsi_debug_dif ;
 scalar_t__ scsi_debug_lbp () ;
 scalar_t__ scsi_debug_no_lun_0 ;
 int scsi_debug_ptype ;
 unsigned char scsi_debug_scsi_level ;
 scalar_t__ scsi_debug_vpd_use_hostno ;

__attribute__((used)) static int resp_inquiry(struct scsi_cmnd * scp, int target,
   struct sdebug_dev_info * devip)
{
 unsigned char pq_pdt;
 unsigned char * arr;
 unsigned char *cmd = (unsigned char *)scp->cmnd;
 int alloc_len, n, ret;

 alloc_len = (cmd[3] << 8) + cmd[4];
 arr = kzalloc(SDEBUG_MAX_INQ_ARR_SZ, GFP_ATOMIC);
 if (! arr)
  return DID_REQUEUE << 16;
 if (devip->wlun)
  pq_pdt = 0x1e;
 else if (scsi_debug_no_lun_0 && (0 == devip->lun))
  pq_pdt = 0x7f;
 else
  pq_pdt = (scsi_debug_ptype & 0x1f);
 arr[0] = pq_pdt;
 if (0x2 & cmd[1]) {
  mk_sense_buffer(devip, ILLEGAL_REQUEST, INVALID_FIELD_IN_CDB,
           0);
  kfree(arr);
  return check_condition_result;
 } else if (0x1 & cmd[1]) {
  int lu_id_num, port_group_id, target_dev_id, len;
  char lu_id_str[6];
  int host_no = devip->sdbg_host->shost->host_no;

  port_group_id = (((host_no + 1) & 0x7f) << 8) +
      (devip->channel & 0x7f);
  if (0 == scsi_debug_vpd_use_hostno)
   host_no = 0;
  lu_id_num = devip->wlun ? -1 : (((host_no + 1) * 2000) +
       (devip->target * 1000) + devip->lun);
  target_dev_id = ((host_no + 1) * 2000) +
     (devip->target * 1000) - 3;
  len = scnprintf(lu_id_str, 6, "%d", lu_id_num);
  if (0 == cmd[2]) {
   arr[1] = cmd[2];
   n = 4;
   arr[n++] = 0x0;
   arr[n++] = 0x80;
   arr[n++] = 0x83;
   arr[n++] = 0x84;
   arr[n++] = 0x85;
   arr[n++] = 0x86;
   arr[n++] = 0x87;
   arr[n++] = 0x88;
   arr[n++] = 0x89;
   arr[n++] = 0xb0;
   arr[n++] = 0xb1;
   if (scsi_debug_lbp())
    arr[n++] = 0xb2;
   arr[3] = n - 4;
  } else if (0x80 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = len;
   memcpy(&arr[4], lu_id_str, len);
  } else if (0x83 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_83(&arr[4], port_group_id,
       target_dev_id, lu_id_num,
       lu_id_str, len);
  } else if (0x84 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_84(&arr[4]);
  } else if (0x85 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_85(&arr[4]);
  } else if (0x86 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = 0x3c;
   if (scsi_debug_dif == SD_DIF_TYPE3_PROTECTION)
    arr[4] = 0x4;
   else if (scsi_debug_dif)
    arr[4] = 0x5;
   else
    arr[4] = 0x0;
   arr[5] = 0x7;
  } else if (0x87 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = 0x8;
   arr[4] = 0x2;
   arr[6] = 0x80;
   arr[8] = 0x18;
   arr[10] = 0x82;
  } else if (0x88 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_88(&arr[4], target_dev_id);
  } else if (0x89 == cmd[2]) {
   arr[1] = cmd[2];
   n = inquiry_evpd_89(&arr[4]);
   arr[2] = (n >> 8);
   arr[3] = (n & 0xff);
  } else if (0xb0 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_b0(&arr[4]);
  } else if (0xb1 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_b1(&arr[4]);
  } else if (0xb2 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_evpd_b2(&arr[4]);
  } else {

   mk_sense_buffer(devip, ILLEGAL_REQUEST,
     INVALID_FIELD_IN_CDB, 0);
   kfree(arr);
   return check_condition_result;
  }
  len = min(((arr[2] << 8) + arr[3]) + 4, alloc_len);
  ret = fill_from_dev_buffer(scp, arr,
       min(len, SDEBUG_MAX_INQ_ARR_SZ));
  kfree(arr);
  return ret;
 }

 arr[1] = DEV_REMOVEABLE(target) ? 0x80 : 0;
 arr[2] = scsi_debug_scsi_level;
 arr[3] = 2;
 arr[4] = SDEBUG_LONG_INQ_SZ - 5;
 arr[5] = scsi_debug_dif ? 1 : 0;
 if (0 == scsi_debug_vpd_use_hostno)
  arr[5] = 0x10;
 arr[6] = 0x10;

 arr[7] = 0xa;
 memcpy(&arr[8], inq_vendor_id, 8);
 memcpy(&arr[16], inq_product_id, 16);
 memcpy(&arr[32], inq_product_rev, 4);

 arr[58] = 0x0; arr[59] = 0x77;
 arr[60] = 0x3; arr[61] = 0x14;
 n = 62;
 if (scsi_debug_ptype == 0) {
  arr[n++] = 0x3; arr[n++] = 0x3d;
 } else if (scsi_debug_ptype == 1) {
  arr[n++] = 0x3; arr[n++] = 0x60;
 }
 arr[n++] = 0xc; arr[n++] = 0xf;
 ret = fill_from_dev_buffer(scp, arr,
       min(alloc_len, SDEBUG_LONG_INQ_SZ));
 kfree(arr);
 return ret;
}
