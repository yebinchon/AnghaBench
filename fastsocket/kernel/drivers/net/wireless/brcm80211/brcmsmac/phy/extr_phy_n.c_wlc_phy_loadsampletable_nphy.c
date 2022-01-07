
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
struct cordic_iq {scalar_t__ q; scalar_t__ i; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; } ;


 int GFP_ATOMIC ;
 int NPHY_TBL_ID_SAMPLEPLAY ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int wlc_phy_stay_in_carriersearch_nphy (struct brcms_phy*,int) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int ,int,unsigned int*) ;

__attribute__((used)) static void
wlc_phy_loadsampletable_nphy(struct brcms_phy *pi, struct cordic_iq *tone_buf,
        u16 num_samps)
{
 u16 t;
 u32 *data_buf = ((void*)0);

 data_buf = kmalloc(sizeof(u32) * num_samps, GFP_ATOMIC);
 if (data_buf == ((void*)0))
  return;

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 1);

 for (t = 0; t < num_samps; t++)
  data_buf[t] = ((((unsigned int)tone_buf[t].i) & 0x3ff) << 10) |
         (((unsigned int)tone_buf[t].q) & 0x3ff);
 wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_SAMPLEPLAY, num_samps, 0, 32,
     data_buf);

 kfree(data_buf);

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 0);
}
