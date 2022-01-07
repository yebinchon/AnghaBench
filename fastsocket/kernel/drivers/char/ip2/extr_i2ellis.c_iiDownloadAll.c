
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int loadHdrStrPtr ;
typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {scalar_t__ i2eState; } ;


 int II_DOWN_BADSTATE ;


 int II_DOWN_OVER ;
 int II_DOWN_UNDER ;
 scalar_t__ II_STATE_READY ;
 scalar_t__ LOADWARE_BLOCK_SIZE ;
 int iiDownloadBlock (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
iiDownloadAll(i2eBordStrPtr pB, loadHdrStrPtr pSource, int isStandard, int size)
{
 int status;



 if (pB->i2eState != II_STATE_READY) return II_DOWN_BADSTATE;

 while (size > 0) {
  size -= LOADWARE_BLOCK_SIZE;




  status = iiDownloadBlock(pB, pSource++, isStandard);

  switch(status)
  {
  case 128:
   return ( (size > 0) ? II_DOWN_OVER : 128);

  case 129:
   break;

  default:
   return status;
  }
 }




 return II_DOWN_UNDER;
}
