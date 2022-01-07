
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;


 int SDEBUG_READCAP16_ARR_SZ ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int ) ;
 int get_sdebug_capacity () ;
 int memset (unsigned char*,int ,int) ;
 int min (int,int) ;
 int scsi_debug_dif ;
 scalar_t__ scsi_debug_lbp () ;
 int scsi_debug_lowest_aligned ;
 int scsi_debug_physblk_exp ;
 int scsi_debug_sector_size ;
 int sdebug_capacity ;

__attribute__((used)) static int resp_readcap16(struct scsi_cmnd * scp,
     struct sdebug_dev_info * devip)
{
 unsigned char *cmd = (unsigned char *)scp->cmnd;
 unsigned char arr[SDEBUG_READCAP16_ARR_SZ];
 unsigned long long capac;
 int errsts, k, alloc_len;

 if ((errsts = check_readiness(scp, 1, devip)))
  return errsts;
 alloc_len = ((cmd[10] << 24) + (cmd[11] << 16) + (cmd[12] << 8)
       + cmd[13]);

 sdebug_capacity = get_sdebug_capacity();
 memset(arr, 0, SDEBUG_READCAP16_ARR_SZ);
 capac = sdebug_capacity - 1;
 for (k = 0; k < 8; ++k, capac >>= 8)
  arr[7 - k] = capac & 0xff;
 arr[8] = (scsi_debug_sector_size >> 24) & 0xff;
 arr[9] = (scsi_debug_sector_size >> 16) & 0xff;
 arr[10] = (scsi_debug_sector_size >> 8) & 0xff;
 arr[11] = scsi_debug_sector_size & 0xff;
 arr[13] = scsi_debug_physblk_exp & 0xf;
 arr[14] = (scsi_debug_lowest_aligned >> 8) & 0x3f;

 if (scsi_debug_lbp())
  arr[14] |= 0x80;

 arr[15] = scsi_debug_lowest_aligned & 0xff;

 if (scsi_debug_dif) {
  arr[12] = (scsi_debug_dif - 1) << 1;
  arr[12] |= 1;
 }

 return fill_from_dev_buffer(scp, arr,
        min(alloc_len, SDEBUG_READCAP16_ARR_SZ));
}
