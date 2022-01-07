
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nouveau_mxm {int * mxms; } ;



__attribute__((used)) static u8 *
mxms_data(struct nouveau_mxm *mxm)
{
 return mxm->mxms;

}
