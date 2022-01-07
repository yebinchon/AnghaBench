
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u16 ;


 unsigned int EINVAL ;
 int FS_DEBUG_QOS ;



 int fs_dprintk (int ,char*,unsigned int,...) ;

__attribute__((used)) static unsigned int make_rate (unsigned int rate, int r,
          u16 * bits, unsigned int * actual)
{
 unsigned char exp = -1;
 unsigned int man = -1;

 fs_dprintk (FS_DEBUG_QOS, "make_rate %u", rate);
 if (rate > 0xffc00000U) {


  if (r == 128) {
   return -EINVAL;
  } else {
   exp = 31;
   man = 511;
  }

 } else if (rate) {


  exp = 31;
  man = rate;


  while (!(man & (1<<31))) {
   exp = exp - 1;
   man = man<<1;
  }





  man = man<<1;
  man &= 0xffffffffU;
  switch (r) {
  case 130: {

   man = man>>(32-9);
   break;
  }
  case 128: {

   if (man & (~0U>>9)) {
    man = (man>>(32-9)) + 1;
    if (man == (1<<9)) {

     man = 0;
     exp += 1;
    }
   } else {
    man = (man>>(32-9));
   }
   break;
  }
  case 129: {

   if (man & (1<<(32-9-1))) {
    man = (man>>(32-9)) + 1;
    if (man == (1<<9)) {

     man = 0;
     exp += 1;
    }
   } else {
    man = (man>>(32-9));
   }
   break;
  }
  }

 } else {


  if (r == 130) {
   return -EINVAL;
  } else {
   exp = 0;
   man = 0;
  }
 }

 fs_dprintk (FS_DEBUG_QOS, "rate: man=%u, exp=%hu", man, exp);

 if (bits)
  *bits = (exp<<9) | man;

 if (actual)
  *actual = (exp >= 9)
   ? (1 << exp) + (man << (exp-9))
   : (1 << exp) + ((man + (1<<(9-exp-1))) >> (9-exp));

 return 0;
}
