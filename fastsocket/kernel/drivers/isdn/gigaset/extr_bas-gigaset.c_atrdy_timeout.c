
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int dev; TYPE_1__ hw; } ;
struct bas_cardstate {int dummy; } ;


 int BS_ATREADY ;
 int BS_ATTIMER ;
 int dev_warn (int ,char*) ;
 int start_cbsend (struct cardstate*) ;
 int update_basstate (struct bas_cardstate*,int ,int ) ;

__attribute__((used)) static void atrdy_timeout(unsigned long data)
{
 struct cardstate *cs = (struct cardstate *) data;
 struct bas_cardstate *ucs = cs->hw.bas;

 dev_warn(cs->dev, "timeout waiting for HD_READY_SEND_ATDATA\n");


 update_basstate(ucs, BS_ATREADY, BS_ATTIMER);
 start_cbsend(cs);
}
