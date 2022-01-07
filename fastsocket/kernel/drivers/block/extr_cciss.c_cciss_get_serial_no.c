
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctlr_info_t ;


 int CISS_INQUIRY ;
 int GFP_KERNEL ;
 int IO_OK ;
 int PAGE_83_INQ_BYTES ;
 int TYPE_CMD ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int log_unit_to_scsi3addr (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;
 int sendcmd_withirq (int *,int ,unsigned char*,int ,int,unsigned char*,int ) ;

__attribute__((used)) static void cciss_get_serial_no(ctlr_info_t *h, int logvol,
   unsigned char *serial_no, int buflen)
{

 int rc;
 unsigned char *buf;
 unsigned char scsi3addr[8];

 if (buflen > 16)
  buflen = 16;
 memset(serial_no, 0xff, buflen);
 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return;
 memset(serial_no, 0, buflen);
 log_unit_to_scsi3addr(h, scsi3addr, logvol);
 rc = sendcmd_withirq(h, CISS_INQUIRY, buf,
  64, 0x83, scsi3addr, TYPE_CMD);
 if (rc == IO_OK)
  memcpy(serial_no, &buf[8], buflen);
 kfree(buf);
 return;
}
