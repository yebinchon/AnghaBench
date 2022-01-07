
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rev; } ;
struct b43_wldev {TYPE_2__* dev; TYPE_1__ phy; } ;
struct TYPE_4__ {int chip_id; scalar_t__ chip_rev; } ;


 int ARRAY_SIZE (int ) ;
 int B43_LPTAB16 (int,int ) ;
 int B43_LPTAB32 (int,int) ;
 int B43_LPTAB8 (int,int ) ;
 int B43_WARN_ON (int) ;
 int b43_lptab_write (struct b43_wldev*,int ,int ) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,int ,int ) ;
 int lpphy_a0_aux_gain_idx_table ;
 int lpphy_a0_gain_idx_table ;
 int lpphy_a0_gain_table ;
 int lpphy_a0_gain_value_table ;
 int lpphy_aux_gain_idx_table ;
 int lpphy_gain_idx_table ;
 int lpphy_gain_table ;
 int lpphy_gain_value_table ;
 int lpphy_hf_table ;
 int lpphy_iqlo_cal_table ;
 int lpphy_min_sig_sq_table ;
 int lpphy_papd_eps_table ;
 int lpphy_papd_mult_table ;
 int lpphy_pll_fraction_table ;
 int lpphy_rev2plus_filter_control_table ;
 int lpphy_rev2plus_noise_scale_table ;
 int lpphy_rev2plus_ps_control_table ;
 int lpphy_sw_control_table ;

void lpphy_rev2plus_table_init(struct b43_wldev *dev)
{
 int i;

 B43_WARN_ON(dev->phy.rev < 2);

 for (i = 0; i < 704; i++)
  b43_lptab_write(dev, B43_LPTAB32(7, i), 0);

 b43_lptab_write_bulk(dev, B43_LPTAB8(2, 0),
  ARRAY_SIZE(lpphy_min_sig_sq_table), lpphy_min_sig_sq_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(1, 0),
  ARRAY_SIZE(lpphy_rev2plus_noise_scale_table), lpphy_rev2plus_noise_scale_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(11, 0),
  ARRAY_SIZE(lpphy_rev2plus_filter_control_table), lpphy_rev2plus_filter_control_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(12, 0),
  ARRAY_SIZE(lpphy_rev2plus_ps_control_table), lpphy_rev2plus_ps_control_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(13, 0),
  ARRAY_SIZE(lpphy_gain_idx_table), lpphy_gain_idx_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(14, 0),
  ARRAY_SIZE(lpphy_aux_gain_idx_table), lpphy_aux_gain_idx_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(15, 0),
  ARRAY_SIZE(lpphy_sw_control_table), lpphy_sw_control_table);
 b43_lptab_write_bulk(dev, B43_LPTAB8(16, 0),
  ARRAY_SIZE(lpphy_hf_table), lpphy_hf_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(17, 0),
  ARRAY_SIZE(lpphy_gain_value_table), lpphy_gain_value_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(18, 0),
  ARRAY_SIZE(lpphy_gain_table), lpphy_gain_table);
 b43_lptab_write_bulk(dev, B43_LPTAB8(6, 0),
  ARRAY_SIZE(lpphy_pll_fraction_table), lpphy_pll_fraction_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(0, 0),
  ARRAY_SIZE(lpphy_iqlo_cal_table), lpphy_iqlo_cal_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(9, 0),
  ARRAY_SIZE(lpphy_papd_eps_table), lpphy_papd_eps_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(10, 0),
  ARRAY_SIZE(lpphy_papd_mult_table), lpphy_papd_mult_table);

 if ((dev->dev->chip_id == 0x4325) && (dev->dev->chip_rev == 0)) {
  b43_lptab_write_bulk(dev, B43_LPTAB32(13, 0),
   ARRAY_SIZE(lpphy_a0_gain_idx_table), lpphy_a0_gain_idx_table);
  b43_lptab_write_bulk(dev, B43_LPTAB16(14, 0),
   ARRAY_SIZE(lpphy_a0_aux_gain_idx_table), lpphy_a0_aux_gain_idx_table);
  b43_lptab_write_bulk(dev, B43_LPTAB32(17, 0),
   ARRAY_SIZE(lpphy_a0_gain_value_table), lpphy_a0_gain_value_table);
  b43_lptab_write_bulk(dev, B43_LPTAB16(18, 0),
   ARRAY_SIZE(lpphy_a0_gain_table), lpphy_a0_gain_table);
 }
}
