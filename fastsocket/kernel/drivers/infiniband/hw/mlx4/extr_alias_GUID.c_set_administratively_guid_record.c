
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_sriov_alias_guid_info_rec_det {int status; int all_recs; int guid_indexes; } ;
struct TYPE_7__ {TYPE_4__* ports_guid; } ;
struct TYPE_5__ {TYPE_3__ alias_guid; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct TYPE_8__ {TYPE_2__* all_rec_per_port; } ;
struct TYPE_6__ {int status; int all_recs; int guid_indexes; } ;


 int GUID_REC_SIZE ;
 int NUM_ALIAS_GUID_IN_REC ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void set_administratively_guid_record(struct mlx4_ib_dev *dev, int port,
          int rec_index,
          struct mlx4_sriov_alias_guid_info_rec_det *rec_det)
{
 dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[rec_index].guid_indexes =
  rec_det->guid_indexes;
 memcpy(dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[rec_index].all_recs,
        rec_det->all_recs, NUM_ALIAS_GUID_IN_REC * GUID_REC_SIZE);
 dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[rec_index].status =
  rec_det->status;
}
