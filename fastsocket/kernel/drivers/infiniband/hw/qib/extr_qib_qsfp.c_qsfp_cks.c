
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct qib_pportdata {int dummy; } ;


 int qsfp_read (struct qib_pportdata*,int,scalar_t__*,int) ;

__attribute__((used)) static int qsfp_cks(struct qib_pportdata *ppd, int first, int next)
{
 int ret;
 u16 cks;
 u8 bval;

 cks = 0;
 while (first < next) {
  ret = qsfp_read(ppd, first, &bval, 1);
  if (ret < 0)
   goto bail;
  cks += bval;
  ++first;
 }
 ret = cks & 0xFF;
bail:
 return ret;

}
