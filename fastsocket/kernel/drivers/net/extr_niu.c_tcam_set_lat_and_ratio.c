
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int FFLP_CFG_1 ;
 int FFLP_CFG_1_CAMLAT ;
 int FFLP_CFG_1_CAMLAT_SHIFT ;
 int FFLP_CFG_1_CAMRATIO ;
 int FFLP_CFG_1_CAMRATIO_SHIFT ;
 int FFLP_CFG_1_FFLPINITDONE ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static void tcam_set_lat_and_ratio(struct niu *np, u64 latency, u64 ratio)
{
 u64 val = nr64(FFLP_CFG_1);

 val &= ~(FFLP_CFG_1_FFLPINITDONE |
   FFLP_CFG_1_CAMLAT |
   FFLP_CFG_1_CAMRATIO);
 val |= (latency << FFLP_CFG_1_CAMLAT_SHIFT);
 val |= (ratio << FFLP_CFG_1_CAMRATIO_SHIFT);
 nw64(FFLP_CFG_1, val);

 val = nr64(FFLP_CFG_1);
 val |= FFLP_CFG_1_FFLPINITDONE;
 nw64(FFLP_CFG_1, val);
}
