
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ctlr_info_t ;
struct TYPE_5__ {int * data_byte; } ;
typedef TYPE_1__ InquiryData_struct ;


 int CISS_INQUIRY ;
 int GFP_KERNEL ;
 int IO_OK ;
 size_t MODEL_LEN ;
 size_t REV_LEN ;
 int TYPE_CMD ;
 size_t VENDOR_LEN ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int log_unit_to_scsi3addr (int *,unsigned char*,int) ;
 int memcpy (char*,int *,size_t) ;
 int sendcmd_withirq (int *,int ,TYPE_1__*,int,int ,unsigned char*,int ) ;

__attribute__((used)) static void cciss_get_device_descr(ctlr_info_t *h, int logvol, char *vendor,
 char *model, char *rev)
{
 int rc;
 InquiryData_struct *inq_buf;
 unsigned char scsi3addr[8];

 *vendor = '\0';
 *model = '\0';
 *rev = '\0';

 inq_buf = kzalloc(sizeof(InquiryData_struct), GFP_KERNEL);
 if (!inq_buf)
  return;

 log_unit_to_scsi3addr(h, scsi3addr, logvol);
 rc = sendcmd_withirq(h, CISS_INQUIRY, inq_buf,
        sizeof(InquiryData_struct), 0,
    scsi3addr, TYPE_CMD);
 if (rc == IO_OK) {
  memcpy(vendor, &inq_buf->data_byte[8], VENDOR_LEN);
  vendor[VENDOR_LEN] = '\0';
  memcpy(model, &inq_buf->data_byte[16], MODEL_LEN);
  model[MODEL_LEN] = '\0';
  memcpy(rev, &inq_buf->data_byte[32], REV_LEN);
  rev[REV_LEN] = '\0';
 }

 kfree(inq_buf);
 return;
}
