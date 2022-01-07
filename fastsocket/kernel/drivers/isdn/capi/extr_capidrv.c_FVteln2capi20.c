
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int decodeFVteln (char*,unsigned long*,int*) ;

__attribute__((used)) static int FVteln2capi20(char *teln, u8 AdditionalInfo[1+2+2+31])
{
 unsigned long bmask;
 int active;
 int rc, i;

 rc = decodeFVteln(teln, &bmask, &active);
 if (rc) return rc;

 AdditionalInfo[0] = 2+2+31;

        AdditionalInfo[1] = 3; AdditionalInfo[2] = 0;

        if (active) {
     AdditionalInfo[3] = 0; AdditionalInfo[4] = 0;
    } else {
     AdditionalInfo[3] = 1; AdditionalInfo[4] = 0;
 }

 AdditionalInfo[5] = 0;
 for (i=1; i <= 30; i++)
  AdditionalInfo[5+i] = (bmask & (1 << i)) ? 0xff : 0;
 return 0;
}
