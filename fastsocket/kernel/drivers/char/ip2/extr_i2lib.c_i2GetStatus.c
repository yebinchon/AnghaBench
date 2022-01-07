
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i2eBordStrPtr ;
typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {unsigned short dataSetIn; int pMyBord; } ;


 int CHANN ;
 int I2_BRK ;
 int I2_DCTS ;
 int I2_DDCD ;
 int I2_DDSR ;
 int I2_DRI ;
 int I2_FRA ;
 int I2_OVR ;
 int I2_PAR ;
 int ITRC_ENTER ;
 int ITRC_RETURN ;
 int ITRC_STATUS ;
 int i2Validate (TYPE_1__*) ;
 int ip2trace (int ,int ,int ,int,int,...) ;

__attribute__((used)) static int
i2GetStatus(i2ChanStrPtr pCh, int resetBits)
{
 unsigned short status;
 i2eBordStrPtr pB;

 ip2trace (CHANN, ITRC_STATUS, ITRC_ENTER, 2, pCh->dataSetIn, resetBits );


 if ( !i2Validate ( pCh ) )
  return -1;

 pB = pCh->pMyBord;

 status = pCh->dataSetIn;



 if (resetBits)
 {
  pCh->dataSetIn &= ~(resetBits & (I2_BRK | I2_PAR | I2_FRA | I2_OVR));
  pCh->dataSetIn &= ~(I2_DDCD | I2_DCTS | I2_DDSR | I2_DRI);
 }

 ip2trace (CHANN, ITRC_STATUS, ITRC_RETURN, 1, pCh->dataSetIn );

 return status;
}
