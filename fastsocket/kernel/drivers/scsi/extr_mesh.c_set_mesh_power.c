
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int mdev; } ;


 int PMAC_FTR_MESH_ENABLE ;
 int machine_is (int ) ;
 int macio_get_of_node (int ) ;
 int msleep (int) ;
 int pmac_call_feature (int ,int ,int ,int) ;
 int powermac ;

__attribute__((used)) static void set_mesh_power(struct mesh_state *ms, int state)
{
 if (!machine_is(powermac))
  return;
 if (state) {
  pmac_call_feature(PMAC_FTR_MESH_ENABLE, macio_get_of_node(ms->mdev), 0, 1);
  msleep(200);
 } else {
  pmac_call_feature(PMAC_FTR_MESH_ENABLE, macio_get_of_node(ms->mdev), 0, 0);
  msleep(10);
 }
}
