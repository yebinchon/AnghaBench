
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {TYPE_3__* bcs; } ;
struct TYPE_4__ {int mml; int dpath; } ;
struct TYPE_5__ {TYPE_1__ isar; } ;
struct TYPE_6__ {int tqueue; TYPE_2__ hw; scalar_t__ mode; } ;


 int INIT_WORK (int *,int ) ;
 int ISAR_HIS_DPS1 ;
 int ISAR_HIS_DPS2 ;
 int ISAR_HIS_P12CFG ;
 int isar_bh ;
 int modeisar (TYPE_3__*,int ,int ) ;
 int sendmsg (struct IsdnCardState*,int,int,int,int*) ;

__attribute__((used)) static void
isar_setup(struct IsdnCardState *cs)
{
 u_char msg;
 int i;


 msg = 61;
 for (i=0; i<2; i++) {

  sendmsg(cs, (i ? ISAR_HIS_DPS2 : ISAR_HIS_DPS1) |
   ISAR_HIS_P12CFG, 4, 1, &msg);
  cs->bcs[i].hw.isar.mml = msg;
  cs->bcs[i].mode = 0;
  cs->bcs[i].hw.isar.dpath = i + 1;
  modeisar(&cs->bcs[i], 0, 0);
  INIT_WORK(&cs->bcs[i].tqueue, isar_bh);
 }
}
