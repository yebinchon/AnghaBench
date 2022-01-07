
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int * priv; scalar_t__ update_channel_int; int clear; int patch_6m_band_edge; int switch_radio_off; int switch_radio_on; int set_channel; int init_hw; } ;
struct uw2453_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int uw2453_clear ;
 int uw2453_init_hw ;
 int uw2453_set_channel ;
 int uw2453_switch_radio_off ;
 int uw2453_switch_radio_on ;
 int zd_rf_generic_patch_6m ;

int zd_rf_init_uw2453(struct zd_rf *rf)
{
 rf->init_hw = uw2453_init_hw;
 rf->set_channel = uw2453_set_channel;
 rf->switch_radio_on = uw2453_switch_radio_on;
 rf->switch_radio_off = uw2453_switch_radio_off;
 rf->patch_6m_band_edge = zd_rf_generic_patch_6m;
 rf->clear = uw2453_clear;

 rf->update_channel_int = 0;

 rf->priv = kmalloc(sizeof(struct uw2453_priv), GFP_KERNEL);
 if (rf->priv == ((void*)0))
  return -ENOMEM;

 return 0;
}
