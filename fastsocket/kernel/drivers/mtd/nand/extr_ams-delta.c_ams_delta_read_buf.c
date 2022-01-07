
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 int ams_delta_read_byte (struct mtd_info*) ;

__attribute__((used)) static void ams_delta_read_buf(struct mtd_info *mtd, u_char *buf, int len)
{
 int i;

 for (i=0; i<len; i++)
  buf[i] = ams_delta_read_byte(mtd);
}
