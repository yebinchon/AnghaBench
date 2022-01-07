
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FAS216_Info ;


 int REG_STAT ;
 int STAT_INT ;
 int STAT_PARITYERROR ;
 int fas216_cmd (int *,int) ;
 int fas216_readb (int *,int ) ;
 int udelay (int) ;

__attribute__((used)) static int fas216_wait_cmd(FAS216_Info *info, int cmd)
{
 int tout;
 int stat;

 fas216_cmd(info, cmd);

 for (tout = 1000; tout; tout -= 1) {
  stat = fas216_readb(info, REG_STAT);
  if (stat & (STAT_INT|STAT_PARITYERROR))
   break;
  udelay(1);
 }

 return stat;
}
