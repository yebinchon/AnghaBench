
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh_flctl {int index; int * done_buff; } ;
struct mtd_info {int dummy; } ;


 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;

__attribute__((used)) static void flctl_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int i, index = flctl->index;

 for (i = 0; i < len; i++)
  flctl->done_buff[index + i] = buf[i];
 flctl->index += len;
}
