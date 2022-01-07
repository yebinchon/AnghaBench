
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;
struct tmio_nand {unsigned int read; scalar_t__ fcr; int read_good; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ FCR_DATA ;
 struct tmio_nand* mtd_to_tmio (struct mtd_info*) ;
 unsigned int tmio_ioread16 (scalar_t__) ;

__attribute__((used)) static u_char tmio_nand_read_byte(struct mtd_info *mtd)
{
 struct tmio_nand *tmio = mtd_to_tmio(mtd);
 unsigned int data;

 if (tmio->read_good--)
  return tmio->read;

 data = tmio_ioread16(tmio->fcr + FCR_DATA);
 tmio->read = data >> 8;
 return data;
}
