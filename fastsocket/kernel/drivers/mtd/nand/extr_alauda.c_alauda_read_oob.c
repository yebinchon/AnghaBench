
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int __alauda_read_page (struct mtd_info*,int ,int *,void*) ;

__attribute__((used)) static int alauda_read_oob(struct mtd_info *mtd, loff_t from, void *oob)
{
 static u8 ignore_buf[512];

 return __alauda_read_page(mtd, from, ignore_buf, oob);
}
