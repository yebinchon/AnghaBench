
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int reset; unsigned char* sense_buff; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;
typedef int arr ;


 int NO_ADDITIONAL_SENSE ;
 int SDEBUG_SENSE_LEN ;
 unsigned char THRESHOLD_EXCEEDED ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int* iec_m_pg ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int mk_sense_buffer (struct sdebug_dev_info*,int ,int ,int ) ;
 scalar_t__ scsi_debug_dsense ;

__attribute__((used)) static int resp_requests(struct scsi_cmnd * scp,
    struct sdebug_dev_info * devip)
{
 unsigned char * sbuff;
 unsigned char *cmd = (unsigned char *)scp->cmnd;
 unsigned char arr[SDEBUG_SENSE_LEN];
 int want_dsense;
 int len = 18;

 memset(arr, 0, sizeof(arr));
 if (devip->reset == 1)
  mk_sense_buffer(devip, 0, NO_ADDITIONAL_SENSE, 0);
 want_dsense = !!(cmd[1] & 1) || scsi_debug_dsense;
 sbuff = devip->sense_buff;
 if ((iec_m_pg[2] & 0x4) && (6 == (iec_m_pg[3] & 0xf))) {
  if (want_dsense) {
   arr[0] = 0x72;
   arr[1] = 0x0;
   arr[2] = THRESHOLD_EXCEEDED;
   arr[3] = 0xff;
  } else {
   arr[0] = 0x70;
   arr[2] = 0x0;
   arr[7] = 0xa;
   arr[12] = THRESHOLD_EXCEEDED;
   arr[13] = 0xff;
  }
 } else {
  memcpy(arr, sbuff, SDEBUG_SENSE_LEN);
  if ((cmd[1] & 1) && (! scsi_debug_dsense)) {

   memset(arr, 0, sizeof(arr));
   arr[0] = 0x72;
   arr[1] = sbuff[2];
   arr[2] = sbuff[12];
   arr[3] = sbuff[13];
   len = 8;
  }
 }
 mk_sense_buffer(devip, 0, NO_ADDITIONAL_SENSE, 0);
 return fill_from_dev_buffer(scp, arr, len);
}
