
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_4__* loadHdrStrPtr ;
typedef TYPE_5__* i2eBordStrPtr ;
struct TYPE_13__ {int porDiag2; } ;
struct TYPE_14__ {TYPE_2__ e; } ;
struct TYPE_16__ {scalar_t__ i2eValid; int i2eState; TYPE_3__ i2ePom; int i2eData; scalar_t__ i2eToLoad; int i2eLSub; int i2eLRevision; int i2eLVersion; } ;
struct TYPE_12__ {int loadSubRevision; int loadRevision; int loadVersion; int loadBlocksMore; int loadMagic; } ;
struct TYPE_15__ {int c; TYPE_1__ e; } ;


 scalar_t__ I2E_MAGIC ;
 scalar_t__ I2_HAS_INPUT (TYPE_5__*) ;
 int II_DOWN_BAD ;
 int II_DOWN_BADFILE ;
 int II_DOWN_BADSTATE ;
 int II_DOWN_BADVALID ;
 int II_DOWN_CONTINUING ;
 int II_DOWN_GOOD ;
 int II_DOWN_TIMEOUT ;
 int II_STATE_BADLOAD ;
 int II_STATE_LOADED ;


 int II_STATE_STDLOADED ;

 int LOADWARE_BLOCK_SIZE ;

 int MAGIC_LOADFILE ;
 int MAX_DLOAD_ACK_TIME ;
 int MAX_DLOAD_READ_TIME ;
 int MAX_DLOAD_START_TIME ;
 int POR_DEBUG_PORT ;
 int iiDelay (TYPE_5__*,int) ;
 int iiWaitForTxEmpty (TYPE_5__*,int ) ;
 int iiWriteBuf (TYPE_5__*,int ,int ) ;
 int inb (int ) ;

__attribute__((used)) static int
iiDownloadBlock ( i2eBordStrPtr pB, loadHdrStrPtr pSource, int isStandard)
{
 int itemp;
 int loadedFirst;

 if (pB->i2eValid != I2E_MAGIC) return II_DOWN_BADVALID;

 switch(pB->i2eState)
 {
 case 130:



  if (pSource->e.loadMagic != MAGIC_LOADFILE)
  {
   return II_DOWN_BADFILE;
  }


  pB->i2eToLoad = 1 + pSource->e.loadBlocksMore;




  pB->i2eState = 131;
  pB->i2eLVersion = pSource->e.loadVersion;
  pB->i2eLRevision = pSource->e.loadRevision;
  pB->i2eLSub = pSource->e.loadSubRevision;



  loadedFirst = 1;
  break;

 case 131:
  loadedFirst = 0;
  break;

 default:
  return II_DOWN_BADSTATE;
 }




 if (!iiWaitForTxEmpty(pB, MAX_DLOAD_READ_TIME)) {
  return II_DOWN_TIMEOUT;
 }

 if (!iiWriteBuf(pB, pSource->c, LOADWARE_BLOCK_SIZE)) {
  return II_DOWN_BADVALID;
 }





 if (loadedFirst) {
  if (!iiWaitForTxEmpty(pB, MAX_DLOAD_START_TIME)) {
   return II_DOWN_TIMEOUT;
  }
 }


 if (--(pB->i2eToLoad)) {
  return II_DOWN_CONTINUING;
 }



 if (!iiWaitForTxEmpty(pB, MAX_DLOAD_READ_TIME)) {
  return II_DOWN_TIMEOUT;
 }


 itemp = MAX_DLOAD_ACK_TIME/10;
 while (--itemp) {
  if (I2_HAS_INPUT(pB)) {
   switch (inb(pB->i2eData)) {
   case 128:
    pB->i2eState =
     isStandard ? II_STATE_STDLOADED :II_STATE_LOADED;






    if (pB->i2ePom.e.porDiag2 & POR_DEBUG_PORT) {
     iiDelay(pB, 700);
    }

    return II_DOWN_GOOD;

   case 129:
   default:
    return II_DOWN_BAD;
   }
  }

  iiDelay(pB, 10);
 }



 pB->i2eState = II_STATE_BADLOAD;
 return II_DOWN_TIMEOUT;
}
