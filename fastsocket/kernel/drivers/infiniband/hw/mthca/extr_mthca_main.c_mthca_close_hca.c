
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fw_icm; } ;
struct TYPE_4__ {TYPE_1__ arbel; } ;
struct mthca_dev {int mthca_flags; TYPE_2__ fw; } ;


 int MTHCA_FLAG_NO_LAM ;
 int mthca_CLOSE_HCA (struct mthca_dev*,int ) ;
 int mthca_DISABLE_LAM (struct mthca_dev*) ;
 int mthca_SYS_DIS (struct mthca_dev*) ;
 int mthca_UNMAP_FA (struct mthca_dev*) ;
 int mthca_free_icm (struct mthca_dev*,int ,int ) ;
 int mthca_free_icms (struct mthca_dev*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static void mthca_close_hca(struct mthca_dev *mdev)
{
 mthca_CLOSE_HCA(mdev, 0);

 if (mthca_is_memfree(mdev)) {
  mthca_free_icms(mdev);

  mthca_UNMAP_FA(mdev);
  mthca_free_icm(mdev, mdev->fw.arbel.fw_icm, 0);

  if (!(mdev->mthca_flags & MTHCA_FLAG_NO_LAM))
   mthca_DISABLE_LAM(mdev);
 } else
  mthca_SYS_DIS(mdev);
}
