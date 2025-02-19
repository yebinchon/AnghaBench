
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u16 ;
struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;


 int EFAULT ;
 scalar_t__ FCR_DATA ;
 struct tmio_nand* mtd_to_tmio (struct mtd_info*) ;
 scalar_t__ tmio_ioread16 (scalar_t__) ;

__attribute__((used)) static int
tmio_nand_verify_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct tmio_nand *tmio = mtd_to_tmio(mtd);
 u16 *p = (u16 *) buf;

 for (len >>= 1; len; len--)
  if (*(p++) != tmio_ioread16(tmio->fcr + FCR_DATA))
   return -EFAULT;
 return 0;
}
