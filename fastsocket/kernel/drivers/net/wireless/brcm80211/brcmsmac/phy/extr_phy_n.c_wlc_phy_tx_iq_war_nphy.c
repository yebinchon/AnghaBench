
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nphy_iq_comp {int b1; int a1; int b0; int a0; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 scalar_t__ M_20IN40_IQ ;
 int wlapi_bmac_write_shm (int ,scalar_t__,int ) ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int,int,int,int,struct nphy_iq_comp*) ;

__attribute__((used)) static void wlc_phy_tx_iq_war_nphy(struct brcms_phy *pi)
{
 struct nphy_iq_comp tx_comp;

 wlc_phy_table_read_nphy(pi, 15, 4, 0x50, 16, &tx_comp);

 wlapi_bmac_write_shm(pi->sh->physhim, M_20IN40_IQ, tx_comp.a0);
 wlapi_bmac_write_shm(pi->sh->physhim, M_20IN40_IQ + 2, tx_comp.b0);
 wlapi_bmac_write_shm(pi->sh->physhim, M_20IN40_IQ + 4, tx_comp.a1);
 wlapi_bmac_write_shm(pi->sh->physhim, M_20IN40_IQ + 6, tx_comp.b1);
}
