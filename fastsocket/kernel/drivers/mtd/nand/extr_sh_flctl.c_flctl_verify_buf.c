
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct mtd_info {int dummy; } ;


 int EFAULT ;
 scalar_t__ const flctl_read_byte (struct mtd_info*) ;

__attribute__((used)) static int flctl_verify_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  if (buf[i] != flctl_read_byte(mtd))
   return -EFAULT;
 return 0;
}
