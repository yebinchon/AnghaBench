
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int aux_icm; } ;
struct TYPE_13__ {TYPE_5__ arbel; } ;
struct TYPE_11__ {int mtt_table; int mpt_table; } ;
struct TYPE_10__ {int qp_table; int eqp_table; int rdb_table; } ;
struct TYPE_9__ {int table; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_14__ {int table; } ;
struct mthca_dev {int mthca_flags; TYPE_6__ fw; TYPE_4__ mr_table; TYPE_3__ qp_table; TYPE_2__ cq_table; TYPE_1__ srq_table; TYPE_7__ mcg_table; } ;


 int MTHCA_FLAG_SRQ ;
 int mthca_UNMAP_ICM_AUX (struct mthca_dev*) ;
 int mthca_free_icm (struct mthca_dev*,int ,int ) ;
 int mthca_free_icm_table (struct mthca_dev*,int ) ;
 int mthca_unmap_eq_icm (struct mthca_dev*) ;

__attribute__((used)) static void mthca_free_icms(struct mthca_dev *mdev)
{

 mthca_free_icm_table(mdev, mdev->mcg_table.table);
 if (mdev->mthca_flags & MTHCA_FLAG_SRQ)
  mthca_free_icm_table(mdev, mdev->srq_table.table);
 mthca_free_icm_table(mdev, mdev->cq_table.table);
 mthca_free_icm_table(mdev, mdev->qp_table.rdb_table);
 mthca_free_icm_table(mdev, mdev->qp_table.eqp_table);
 mthca_free_icm_table(mdev, mdev->qp_table.qp_table);
 mthca_free_icm_table(mdev, mdev->mr_table.mpt_table);
 mthca_free_icm_table(mdev, mdev->mr_table.mtt_table);
 mthca_unmap_eq_icm(mdev);

 mthca_UNMAP_ICM_AUX(mdev);
 mthca_free_icm(mdev, mdev->fw.arbel.aux_icm, 0);
}
