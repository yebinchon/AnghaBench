
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base_vfmprc; scalar_t__ vfmprc; int saved_reset_vfmprc; scalar_t__ base_vfgotc; scalar_t__ vfgotc; int saved_reset_vfgotc; scalar_t__ base_vfgorc; scalar_t__ vfgorc; int saved_reset_vfgorc; scalar_t__ base_vfgptc; scalar_t__ vfgptc; int saved_reset_vfgptc; scalar_t__ base_vfgprc; scalar_t__ vfgprc; int saved_reset_vfgprc; } ;
struct ixgbevf_adapter {TYPE_1__ stats; } ;



__attribute__((used)) static void ixgbevf_save_reset_stats(struct ixgbevf_adapter *adapter)
{

 if (adapter->stats.vfgprc || adapter->stats.vfgptc) {
  adapter->stats.saved_reset_vfgprc += adapter->stats.vfgprc -
   adapter->stats.base_vfgprc;
  adapter->stats.saved_reset_vfgptc += adapter->stats.vfgptc -
   adapter->stats.base_vfgptc;
  adapter->stats.saved_reset_vfgorc += adapter->stats.vfgorc -
   adapter->stats.base_vfgorc;
  adapter->stats.saved_reset_vfgotc += adapter->stats.vfgotc -
   adapter->stats.base_vfgotc;
  adapter->stats.saved_reset_vfmprc += adapter->stats.vfmprc -
   adapter->stats.base_vfmprc;
 }
}
