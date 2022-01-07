
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {struct brcms_c_info* wlc; } ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_3__ {int phyrev; } ;


 scalar_t__ BRCMS_ISLCNPHY (TYPE_1__*) ;
 scalar_t__ BRCMS_ISNPHY (TYPE_1__*) ;
 int M_SYNTHPU_DLY ;
 scalar_t__ NREV_GE (int ,int) ;
 int SYNTHPU_DLY_BPHY_US ;
 int SYNTHPU_DLY_LPPHY_US ;
 int SYNTHPU_DLY_NPHY_US ;
 int brcms_b_write_shm (struct brcms_hardware*,int ,int ) ;

__attribute__((used)) static void brcms_b_upd_synthpu(struct brcms_hardware *wlc_hw)
{
 u16 v;
 struct brcms_c_info *wlc = wlc_hw->wlc;


 if (BRCMS_ISLCNPHY(wlc->band))
  v = SYNTHPU_DLY_LPPHY_US;
 else if (BRCMS_ISNPHY(wlc->band) && (NREV_GE(wlc->band->phyrev, 3)))
  v = SYNTHPU_DLY_NPHY_US;
 else
  v = SYNTHPU_DLY_BPHY_US;

 brcms_b_write_shm(wlc_hw, M_SYNTHPU_DLY, v);
}
