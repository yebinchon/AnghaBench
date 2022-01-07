
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {unsigned long gs_gru_base_paddr; int gs_gid; int gs_blade_id; int gs_chiplet_id; unsigned long gs_cbr_map; unsigned long gs_dsr_map; void* gs_gru_base_vaddr; int gs_asid_limit; int gs_blade; int gs_asid_lock; int gs_lock; } ;


 int GRU_CBR_AU ;
 int GRU_CHIPLETS_PER_BLADE ;
 unsigned long GRU_DSR_AU ;
 int MAX_ASID ;
 int * gru_base ;
 int gru_dbg (int ,char*,int,int,void*,unsigned long) ;
 int gru_max_gids ;
 int gru_tgh_flush_init (struct gru_state*) ;
 int grudev ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void gru_init_chiplet(struct gru_state *gru, unsigned long paddr,
        void *vaddr, int blade_id, int chiplet_id)
{
 spin_lock_init(&gru->gs_lock);
 spin_lock_init(&gru->gs_asid_lock);
 gru->gs_gru_base_paddr = paddr;
 gru->gs_gru_base_vaddr = vaddr;
 gru->gs_gid = blade_id * GRU_CHIPLETS_PER_BLADE + chiplet_id;
 gru->gs_blade = gru_base[blade_id];
 gru->gs_blade_id = blade_id;
 gru->gs_chiplet_id = chiplet_id;
 gru->gs_cbr_map = (GRU_CBR_AU == 64) ? ~0 : (1UL << GRU_CBR_AU) - 1;
 gru->gs_dsr_map = (1UL << GRU_DSR_AU) - 1;
 gru->gs_asid_limit = MAX_ASID;
 gru_tgh_flush_init(gru);
 if (gru->gs_gid >= gru_max_gids)
  gru_max_gids = gru->gs_gid + 1;
 gru_dbg(grudev, "bid %d, gid %d, vaddr %p (0x%lx)\n",
  blade_id, gru->gs_gid, gru->gs_gru_base_vaddr,
  gru->gs_gru_base_paddr);
}
