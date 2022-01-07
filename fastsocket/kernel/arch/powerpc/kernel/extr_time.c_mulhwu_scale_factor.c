
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mulhwu (unsigned int,unsigned int) ;

unsigned mulhwu_scale_factor(unsigned inscale, unsigned outscale)
{
        unsigned mlt=0, tmp, err;




        for (tmp = 1U<<31; tmp != 0; tmp >>= 1) {
                if (mulhwu(inscale, mlt|tmp) < outscale)
   mlt |= tmp;
        }
        err = inscale * (mlt+1);
        if (err <= inscale/2)
  mlt++;
        return mlt;
}
