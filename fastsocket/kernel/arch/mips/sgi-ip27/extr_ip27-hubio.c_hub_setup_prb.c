
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nasid_t ;
struct TYPE_2__ {int iprb_ovflow; int iprb_ff; int iprb_xtalkctr; int iprb_regval; scalar_t__ iprb_anakctr; scalar_t__ iprb_bnakctr; } ;
typedef TYPE_1__ iprb_t ;


 int IIO_IOPRB (int) ;
 int REMOTE_HUB_L (int ,int) ;
 int REMOTE_HUB_S (int ,int,int ) ;
 scalar_t__ force_fire_and_forget ;

__attribute__((used)) static void hub_setup_prb(nasid_t nasid, int prbnum, int credits)
{
 iprb_t prb;
 int prb_offset;




 prb_offset = IIO_IOPRB(prbnum);
 prb.iprb_regval = REMOTE_HUB_L(nasid, prb_offset);




 prb.iprb_ovflow = 1;
 prb.iprb_bnakctr = 0;
 prb.iprb_anakctr = 0;




 prb.iprb_ff = force_fire_and_forget ? 1 : 0;




 prb.iprb_xtalkctr = credits;




 REMOTE_HUB_S(nasid, prb_offset, prb.iprb_regval);
}
