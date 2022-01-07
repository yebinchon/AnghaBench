
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int FFLP_CFG_1 ;
 int FFLP_CFG_1_TCAM_DIS ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static void tcam_enable(struct niu *np, int on)
{
 u64 val = nr64(FFLP_CFG_1);

 if (on)
  val &= ~FFLP_CFG_1_TCAM_DIS;
 else
  val |= FFLP_CFG_1_TCAM_DIS;
 nw64(FFLP_CFG_1, val);
}
