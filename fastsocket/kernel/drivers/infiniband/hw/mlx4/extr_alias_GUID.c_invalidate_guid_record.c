
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_7__ {TYPE_2__* ports_guid; } ;
struct TYPE_8__ {TYPE_3__ alias_guid; } ;
struct mlx4_ib_dev {TYPE_4__ sriov; } ;
typedef int ib_sa_comp_mask ;
struct TYPE_6__ {TYPE_1__* all_rec_per_port; } ;
struct TYPE_5__ {scalar_t__ ownership; int guid_indexes; int * all_recs; int method; int status; } ;


 int GUID_REC_SIZE ;
 scalar_t__ MLX4_GUID_FOR_DELETE_VAL ;
 int MLX4_GUID_INFO_RECORD_SET ;
 int MLX4_GUID_INFO_STATUS_IDLE ;
 scalar_t__ MLX4_GUID_NONE_ASSIGN ;
 int NUM_ALIAS_GUID_IN_REC ;
 int mlx4_ib_get_aguid_comp_mask_from_ix (int) ;

__attribute__((used)) static void invalidate_guid_record(struct mlx4_ib_dev *dev, u8 port, int index)
{
 int i;
 u64 cur_admin_val;
 ib_sa_comp_mask comp_mask = 0;

 dev->sriov.alias_guid.ports_guid[port - 1].all_rec_per_port[index].status
  = MLX4_GUID_INFO_STATUS_IDLE;
 dev->sriov.alias_guid.ports_guid[port - 1].all_rec_per_port[index].method
  = MLX4_GUID_INFO_RECORD_SET;


 for (i = 0; i < NUM_ALIAS_GUID_IN_REC; i++) {
  cur_admin_val =
   *(u64 *)&dev->sriov.alias_guid.ports_guid[port - 1].
   all_rec_per_port[index].all_recs[GUID_REC_SIZE * i];






  if (MLX4_GUID_FOR_DELETE_VAL == cur_admin_val ||
      (!index && !i) ||
      MLX4_GUID_NONE_ASSIGN == dev->sriov.alias_guid.
      ports_guid[port - 1].all_rec_per_port[index].ownership)
   continue;
  comp_mask |= mlx4_ib_get_aguid_comp_mask_from_ix(i);
 }
 dev->sriov.alias_guid.ports_guid[port - 1].
  all_rec_per_port[index].guid_indexes = comp_mask;
}
