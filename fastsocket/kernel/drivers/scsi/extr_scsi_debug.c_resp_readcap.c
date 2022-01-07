
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 int SDEBUG_READCAP_ARR_SZ ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int get_sdebug_capacity () ;
 int memset (unsigned char*,int ,int) ;
 int scsi_debug_sector_size ;
 int sdebug_capacity ;

__attribute__((used)) static int resp_readcap(struct scsi_cmnd * scp,
   struct sdebug_dev_info * devip)
{
 unsigned char arr[SDEBUG_READCAP_ARR_SZ];
 unsigned int capac;
 int errsts;

 if ((errsts = check_readiness(scp, 1, devip)))
  return errsts;

 sdebug_capacity = get_sdebug_capacity();
 memset(arr, 0, SDEBUG_READCAP_ARR_SZ);
 if (sdebug_capacity < 0xffffffff) {
  capac = (unsigned int)sdebug_capacity - 1;
  arr[0] = (capac >> 24);
  arr[1] = (capac >> 16) & 0xff;
  arr[2] = (capac >> 8) & 0xff;
  arr[3] = capac & 0xff;
 } else {
  arr[0] = 0xff;
  arr[1] = 0xff;
  arr[2] = 0xff;
  arr[3] = 0xff;
 }
 arr[6] = (scsi_debug_sector_size >> 8) & 0xff;
 arr[7] = scsi_debug_sector_size & 0xff;
 return fill_from_dev_buffer(scp, arr, SDEBUG_READCAP_ARR_SZ);
}
