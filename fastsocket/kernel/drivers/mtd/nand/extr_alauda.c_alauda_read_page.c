
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int __alauda_read_page (struct mtd_info*,int ,void*,int *) ;
 int correct_data (void*,int *,int*,int*) ;

__attribute__((used)) static int alauda_read_page(struct mtd_info *mtd, loff_t from,
  void *buf, u8 *oob, int *corrected, int *uncorrected)
{
 int err;

 err = __alauda_read_page(mtd, from, buf, oob);
 if (err)
  return err;
 correct_data(buf, oob+13, corrected, uncorrected);
 correct_data(buf+256, oob+8, corrected, uncorrected);
 return 0;
}
