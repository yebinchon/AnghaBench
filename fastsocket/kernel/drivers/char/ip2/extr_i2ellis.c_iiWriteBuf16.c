
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {scalar_t__ i2eValid; int i2eData; } ;


 int I2EE_GOOD ;
 int I2EE_INVALID ;
 scalar_t__ I2E_MAGIC ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 int I2_OUTSW (int ,unsigned char*,int) ;

__attribute__((used)) static int
iiWriteBuf16(i2eBordStrPtr pB, unsigned char *address, int count)
{

 if (pB->i2eValid != I2E_MAGIC)
  I2_COMPLETE(pB, I2EE_INVALID);

 I2_OUTSW(pB->i2eData, address, count);

 I2_COMPLETE(pB, I2EE_GOOD);
}
