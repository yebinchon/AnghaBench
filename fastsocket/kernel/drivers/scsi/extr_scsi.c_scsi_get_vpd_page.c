
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct scsi_device {int dummy; } ;


 int EINVAL ;
 int min (int,int) ;
 int scsi_vpd_inquiry (struct scsi_device*,unsigned char*,unsigned char,int) ;

int scsi_get_vpd_page(struct scsi_device *sdev, u8 page, unsigned char *buf,
        int buf_len)
{
 int i, result;


 result = scsi_vpd_inquiry(sdev, buf, 0, buf_len);
 if (result)
  goto fail;


 if (page == 0)
  return 0;

 for (i = 0; i < min((int)buf[3], buf_len - 4); i++)
  if (buf[i + 4] == page)
   goto found;

 if (i < buf[3] && i >= buf_len - 4)

  goto found;

 goto fail;

 found:
 result = scsi_vpd_inquiry(sdev, buf, page, buf_len);
 if (result)
  goto fail;

 return 0;

 fail:
 return -EINVAL;
}
