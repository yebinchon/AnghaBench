
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_5__ {scalar_t__ i2eValid; scalar_t__ i2eState; } ;


 int I2EE_BADMAGIC ;
 int I2EE_BADSTATE ;
 int I2EE_GOOD ;
 scalar_t__ I2E_MAGIC ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 scalar_t__ II_STATE_RESET ;
 int iiDelay (TYPE_1__*,int) ;
 int iiDelayed ;

__attribute__((used)) static int
iiResetDelay(i2eBordStrPtr pB)
{
 if (pB->i2eValid != I2E_MAGIC) {
  I2_COMPLETE(pB, I2EE_BADMAGIC);
 }
 if (pB->i2eState != II_STATE_RESET) {
  I2_COMPLETE(pB, I2EE_BADSTATE);
 }
 iiDelay(pB,2000);
 iiDelayed = 1;
 I2_COMPLETE(pB, I2EE_GOOD);
}
