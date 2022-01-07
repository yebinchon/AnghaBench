
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {unsigned int buf_size; } ;


 int EFAULT ;

__attribute__((used)) static int hpsb_iso_check_offset_len(struct hpsb_iso *iso,
         unsigned int offset, unsigned short len,
         unsigned int *out_offset,
         unsigned short *out_len)
{
 if (offset >= iso->buf_size)
  return -EFAULT;


 if (offset + len > iso->buf_size)
  return -EFAULT;


 if (offset + len < offset)
  return -EFAULT;


 *out_offset = offset;
 *out_len = len;

 return 0;
}
