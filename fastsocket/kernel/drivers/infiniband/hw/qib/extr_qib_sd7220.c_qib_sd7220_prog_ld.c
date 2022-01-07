
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int dummy; } ;


 int PROG_CHUNK ;
 int qib_sd7220_ram_xfer (struct qib_devdata*,int,int,int *,int,int ) ;

__attribute__((used)) static int qib_sd7220_prog_ld(struct qib_devdata *dd, int sdnum,
         const u8 *img, int len, int offset)
{
 int cnt, sofar, req;

 sofar = 0;
 while (sofar < len) {
  req = len - sofar;
  if (req > PROG_CHUNK)
   req = PROG_CHUNK;
  cnt = qib_sd7220_ram_xfer(dd, sdnum, offset + sofar,
       (u8 *)img + sofar, req, 0);
  if (cnt < req) {
   sofar = -1;
   break;
  }
  sofar += req;
 }
 return sofar;
}
