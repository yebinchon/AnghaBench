
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int FFLP_CFG_1 ;
 int FFLP_CFG_1_FCRAMOUTDR_NORMAL ;
 int FFLP_CFG_1_FFLPINITDONE ;
 int FFLP_CFG_1_PIO_FIO_RST ;
 int nw64 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void fflp_reset(struct niu *np)
{
 u64 val;

 nw64(FFLP_CFG_1, FFLP_CFG_1_PIO_FIO_RST);
 udelay(10);
 nw64(FFLP_CFG_1, 0);

 val = FFLP_CFG_1_FCRAMOUTDR_NORMAL | FFLP_CFG_1_FFLPINITDONE;
 nw64(FFLP_CFG_1, val);
}
