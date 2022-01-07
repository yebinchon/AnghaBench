
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 int ams_delta_write_byte (struct mtd_info*,int const) ;

__attribute__((used)) static void ams_delta_write_buf(struct mtd_info *mtd, const u_char *buf,
    int len)
{
 int i;

 for (i=0; i<len; i++)
  ams_delta_write_byte(mtd, buf[i]);
}
