
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;


 int flctl_read_byte (struct mtd_info*) ;

__attribute__((used)) static void flctl_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  buf[i] = flctl_read_byte(mtd);
}
