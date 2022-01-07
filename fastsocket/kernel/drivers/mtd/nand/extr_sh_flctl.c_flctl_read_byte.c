
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh_flctl {int index; int * done_buff; } ;
struct mtd_info {int dummy; } ;


 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;

__attribute__((used)) static uint8_t flctl_read_byte(struct mtd_info *mtd)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int index = flctl->index;
 uint8_t data;

 data = flctl->done_buff[index];
 flctl->index++;
 return data;
}
