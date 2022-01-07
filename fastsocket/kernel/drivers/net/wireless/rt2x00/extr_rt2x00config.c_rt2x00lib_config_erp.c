
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00lib_erp {int ht_opmode; int beacon_int; int basic_rates; int eifs; int difs; int pifs; int sifs; int slot_time; int cts_protection; int short_preamble; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {TYPE_2__* ops; int beacon_int; int last_beacon; int aid; } ;
struct ieee80211_bss_conf {int ht_operation_mode; int beacon_int; int sync_tsf; int aid; scalar_t__ assoc; int basic_rates; scalar_t__ use_short_slot; int use_cts_prot; int use_short_preamble; } ;
typedef int erp ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* config_erp ) (struct rt2x00_dev*,struct rt2x00lib_erp*,int) ;} ;


 int BSS_CHANGED_HT ;
 int DIFS ;
 int EIFS ;
 int PIFS ;
 int SHORT_DIFS ;
 int SHORT_EIFS ;
 int SHORT_PIFS ;
 int SHORT_SLOT_TIME ;
 int SIFS ;
 int SLOT_TIME ;
 int memset (struct rt2x00lib_erp*,int ,int) ;
 int stub1 (struct rt2x00_dev*,struct rt2x00lib_erp*,int) ;

void rt2x00lib_config_erp(struct rt2x00_dev *rt2x00dev,
     struct rt2x00_intf *intf,
     struct ieee80211_bss_conf *bss_conf,
     u32 changed)
{
 struct rt2x00lib_erp erp;

 memset(&erp, 0, sizeof(erp));

 erp.short_preamble = bss_conf->use_short_preamble;
 erp.cts_protection = bss_conf->use_cts_prot;

 erp.slot_time = bss_conf->use_short_slot ? SHORT_SLOT_TIME : SLOT_TIME;
 erp.sifs = SIFS;
 erp.pifs = bss_conf->use_short_slot ? SHORT_PIFS : PIFS;
 erp.difs = bss_conf->use_short_slot ? SHORT_DIFS : DIFS;
 erp.eifs = bss_conf->use_short_slot ? SHORT_EIFS : EIFS;

 erp.basic_rates = bss_conf->basic_rates;
 erp.beacon_int = bss_conf->beacon_int;


 rt2x00dev->aid = bss_conf->assoc ? bss_conf->aid : 0;
 rt2x00dev->last_beacon = bss_conf->sync_tsf;


 rt2x00dev->beacon_int = bss_conf->beacon_int;

 if (changed & BSS_CHANGED_HT)
  erp.ht_opmode = bss_conf->ht_operation_mode;

 rt2x00dev->ops->lib->config_erp(rt2x00dev, &erp, changed);
}
