
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int DEFAULT_FCRAMRATIO ;
 int DEFAULT_FCRAM_REFRESH_MAX ;
 int DEFAULT_FCRAM_REFRESH_MIN ;
 int FCRAM_REF_TMR ;
 int FCRAM_REF_TMR_MAX ;
 int FCRAM_REF_TMR_MAX_SHIFT ;
 int FCRAM_REF_TMR_MIN ;
 int FCRAM_REF_TMR_MIN_SHIFT ;
 int FFLP_CFG_1 ;
 int FFLP_CFG_1_FCRAMRATIO_SHIFT ;
 int FFLP_CFG_1_FFLPINITDONE ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static void fflp_set_timings(struct niu *np)
{
 u64 val = nr64(FFLP_CFG_1);

 val &= ~FFLP_CFG_1_FFLPINITDONE;
 val |= (DEFAULT_FCRAMRATIO << FFLP_CFG_1_FCRAMRATIO_SHIFT);
 nw64(FFLP_CFG_1, val);

 val = nr64(FFLP_CFG_1);
 val |= FFLP_CFG_1_FFLPINITDONE;
 nw64(FFLP_CFG_1, val);

 val = nr64(FCRAM_REF_TMR);
 val &= ~(FCRAM_REF_TMR_MAX | FCRAM_REF_TMR_MIN);
 val |= (DEFAULT_FCRAM_REFRESH_MAX << FCRAM_REF_TMR_MAX_SHIFT);
 val |= (DEFAULT_FCRAM_REFRESH_MIN << FCRAM_REF_TMR_MIN_SHIFT);
 nw64(FCRAM_REF_TMR, val);
}
