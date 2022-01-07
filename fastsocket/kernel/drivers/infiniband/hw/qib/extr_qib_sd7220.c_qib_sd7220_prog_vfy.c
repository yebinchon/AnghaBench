
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct qib_devdata {int dummy; } ;


 int VFY_CHUNK ;
 int qib_sd7220_ram_xfer (struct qib_devdata*,int,int,unsigned char*,int,int) ;

__attribute__((used)) static int qib_sd7220_prog_vfy(struct qib_devdata *dd, int sdnum,
          const u8 *img, int len, int offset)
{
 int cnt, sofar, req, idx, errors;
 unsigned char readback[VFY_CHUNK];

 errors = 0;
 sofar = 0;
 while (sofar < len) {
  req = len - sofar;
  if (req > VFY_CHUNK)
   req = VFY_CHUNK;
  cnt = qib_sd7220_ram_xfer(dd, sdnum, sofar + offset,
       readback, req, 1);
  if (cnt < req) {

   sofar = -1;
   break;
  }
  for (idx = 0; idx < cnt; ++idx) {
   if (readback[idx] != img[idx+sofar])
    ++errors;
  }
  sofar += cnt;
 }
 return errors ? -errors : sofar;
}
