
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;
typedef int arr ;


 int ILLEGAL_REQUEST ;
 int INVALID_FIELD_IN_CDB ;
 int SDEBUG_MAX_INQ_ARR_SZ ;
 int SDEBUG_MAX_LSENSE_SZ ;
 int check_condition_result ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int min (int,int) ;
 int mk_sense_buffer (struct sdebug_dev_info*,int ,int ,int ) ;
 unsigned char resp_ie_l_pg (unsigned char*) ;
 unsigned char resp_temp_l_pg (unsigned char*) ;

__attribute__((used)) static int resp_log_sense(struct scsi_cmnd * scp,
                          struct sdebug_dev_info * devip)
{
 int ppc, sp, pcontrol, pcode, subpcode, alloc_len, errsts, len, n;
 unsigned char arr[SDEBUG_MAX_LSENSE_SZ];
 unsigned char *cmd = (unsigned char *)scp->cmnd;

 if ((errsts = check_readiness(scp, 1, devip)))
  return errsts;
 memset(arr, 0, sizeof(arr));
 ppc = cmd[1] & 0x2;
 sp = cmd[1] & 0x1;
 if (ppc || sp) {
  mk_sense_buffer(devip, ILLEGAL_REQUEST,
    INVALID_FIELD_IN_CDB, 0);
  return check_condition_result;
 }
 pcontrol = (cmd[2] & 0xc0) >> 6;
 pcode = cmd[2] & 0x3f;
 subpcode = cmd[3] & 0xff;
 alloc_len = (cmd[7] << 8) + cmd[8];
 arr[0] = pcode;
 if (0 == subpcode) {
  switch (pcode) {
  case 0x0:
   n = 4;
   arr[n++] = 0x0;
   arr[n++] = 0xd;
   arr[n++] = 0x2f;
   arr[3] = n - 4;
   break;
  case 0xd:
   arr[3] = resp_temp_l_pg(arr + 4);
   break;
  case 0x2f:
   arr[3] = resp_ie_l_pg(arr + 4);
   break;
  default:
   mk_sense_buffer(devip, ILLEGAL_REQUEST,
     INVALID_FIELD_IN_CDB, 0);
   return check_condition_result;
  }
 } else if (0xff == subpcode) {
  arr[0] |= 0x40;
  arr[1] = subpcode;
  switch (pcode) {
  case 0x0:
   n = 4;
   arr[n++] = 0x0;
   arr[n++] = 0x0;
   arr[n++] = 0x0;
   arr[n++] = 0xff;
   arr[n++] = 0xd;
   arr[n++] = 0x0;
   arr[n++] = 0x2f;
   arr[n++] = 0x0;
   arr[3] = n - 4;
   break;
  case 0xd:
   n = 4;
   arr[n++] = 0xd;
   arr[n++] = 0x0;
   arr[3] = n - 4;
   break;
  case 0x2f:
   n = 4;
   arr[n++] = 0x2f;
   arr[n++] = 0x0;
   arr[3] = n - 4;
   break;
  default:
   mk_sense_buffer(devip, ILLEGAL_REQUEST,
     INVALID_FIELD_IN_CDB, 0);
   return check_condition_result;
  }
 } else {
  mk_sense_buffer(devip, ILLEGAL_REQUEST,
    INVALID_FIELD_IN_CDB, 0);
  return check_condition_result;
 }
 len = min(((arr[2] << 8) + arr[3]) + 4, alloc_len);
 return fill_from_dev_buffer(scp, arr,
      min(len, SDEBUG_MAX_INQ_ARR_SZ));
}
