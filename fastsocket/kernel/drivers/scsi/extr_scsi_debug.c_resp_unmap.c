
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unmap_block_desc {int blocks; int lba; } ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int check_condition_result ;
 int check_device_access_params (struct sdebug_dev_info*,unsigned long long,unsigned int) ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 unsigned int get_unaligned_be16 (unsigned char*) ;
 unsigned int get_unaligned_be32 (int *) ;
 unsigned long long get_unaligned_be64 (int *) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_copy_to_buffer (struct scsi_cmnd*,unsigned char*,unsigned int) ;
 int unmap_region (unsigned long long,unsigned int) ;

__attribute__((used)) static int resp_unmap(struct scsi_cmnd * scmd, struct sdebug_dev_info * devip)
{
 unsigned char *buf;
 struct unmap_block_desc *desc;
 unsigned int i, payload_len, descriptors;
 int ret;

 ret = check_readiness(scmd, 1, devip);
 if (ret)
  return ret;

 payload_len = get_unaligned_be16(&scmd->cmnd[7]);
 BUG_ON(scsi_bufflen(scmd) != payload_len);

 descriptors = (payload_len - 8) / 16;

 buf = kmalloc(scsi_bufflen(scmd), GFP_ATOMIC);
 if (!buf)
  return check_condition_result;

 scsi_sg_copy_to_buffer(scmd, buf, scsi_bufflen(scmd));

 BUG_ON(get_unaligned_be16(&buf[0]) != payload_len - 2);
 BUG_ON(get_unaligned_be16(&buf[2]) != descriptors * 16);

 desc = (void *)&buf[8];

 for (i = 0 ; i < descriptors ; i++) {
  unsigned long long lba = get_unaligned_be64(&desc[i].lba);
  unsigned int num = get_unaligned_be32(&desc[i].blocks);

  ret = check_device_access_params(devip, lba, num);
  if (ret)
   goto out;

  unmap_region(lba, num);
 }

 ret = 0;

out:
 kfree(buf);

 return ret;
}
