
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_asid; int gs_asid_limit; int gs_gid; } ;


 scalar_t__ ASID_INC ;
 int gru_dbg (int ,char*,int ,int) ;
 int gru_reset_asid_limit (struct gru_state*,int) ;
 int grudev ;

__attribute__((used)) static int gru_assign_asid(struct gru_state *gru)
{
 int asid;

 gru->gs_asid += ASID_INC;
 asid = gru->gs_asid;
 if (asid >= gru->gs_asid_limit)
  asid = gru_reset_asid_limit(gru, asid);

 gru_dbg(grudev, "gid %d, asid 0x%x\n", gru->gs_gid, asid);
 return asid;
}
