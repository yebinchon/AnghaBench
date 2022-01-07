
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int port_mode; unsigned int saved_bits; int bpp; } ;



 int QC_MODE_MASK ;

 int qc_waithand (struct qcam_device*,int) ;
 int qc_waithand2 (struct qcam_device*,int) ;
 int read_lpstatus (struct qcam_device*) ;
 int write_lpcontrol (struct qcam_device*,int) ;

__attribute__((used)) static inline int qc_readbytes(struct qcam_device *q, char buffer[])
{
 int ret=1;
 unsigned int hi, lo;
 unsigned int hi2, lo2;
 static int state;

 if (buffer == ((void*)0))
 {
  state = 0;
  return 0;
 }

 switch (q->port_mode & QC_MODE_MASK)
 {
  case 129:
   write_lpcontrol(q, 0x26);
   lo = (qc_waithand2(q, 1) >> 1);
   hi = (read_lpstatus(q) >> 3) & 0x1f;
   write_lpcontrol(q, 0x2e);
   lo2 = (qc_waithand2(q, 0) >> 1);
   hi2 = (read_lpstatus(q) >> 3) & 0x1f;
   switch (q->bpp)
   {
    case 4:
     buffer[0] = lo & 0xf;
     buffer[1] = ((lo & 0x70) >> 4) | ((hi & 1) << 3);
     buffer[2] = (hi & 0x1e) >> 1;
     buffer[3] = lo2 & 0xf;
     buffer[4] = ((lo2 & 0x70) >> 4) | ((hi2 & 1) << 3);
     buffer[5] = (hi2 & 0x1e) >> 1;
     ret = 6;
     break;
    case 6:
     buffer[0] = lo & 0x3f;
     buffer[1] = ((lo & 0x40) >> 6) | (hi << 1);
     buffer[2] = lo2 & 0x3f;
     buffer[3] = ((lo2 & 0x40) >> 6) | (hi2 << 1);
     ret = 4;
     break;
   }
   break;

  case 128:
   write_lpcontrol(q, 6);
   lo = (qc_waithand(q, 1) & 0xf0) >> 4;
   write_lpcontrol(q, 0xe);
   hi = (qc_waithand(q, 0) & 0xf0) >> 4;

   switch (q->bpp)
   {
    case 4:
     buffer[0] = lo;
     buffer[1] = hi;
     ret = 2;
     break;
    case 6:
     switch (state)
     {
      case 0:
       buffer[0] = (lo << 2) | ((hi & 0xc) >> 2);
       q->saved_bits = (hi & 3) << 4;
       state = 1;
       ret = 1;
       break;
      case 1:
       buffer[0] = lo | q->saved_bits;
       q->saved_bits = hi << 2;
       state = 2;
       ret = 1;
       break;
      case 2:
       buffer[0] = ((lo & 0xc) >> 2) | q->saved_bits;
       buffer[1] = ((lo & 3) << 4) | hi;
       state = 0;
       ret = 2;
       break;
     }
     break;
   }
   break;
 }
 return ret;
}
