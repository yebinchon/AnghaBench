
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx_mod {scalar_t__ rx_free_count; scalar_t__ rxp_free_count; int rxq_free_count; } ;
struct bna_rx_config {scalar_t__ rxp_type; scalar_t__ num_paths; } ;


 scalar_t__ BNA_RXP_SINGLE ;

__attribute__((used)) static int
bna_rx_res_check(struct bna_rx_mod *rx_mod, struct bna_rx_config *rx_cfg)
{
 if ((rx_mod->rx_free_count == 0) ||
  (rx_mod->rxp_free_count == 0) ||
  (rx_mod->rxq_free_count == 0))
  return 0;

 if (rx_cfg->rxp_type == BNA_RXP_SINGLE) {
  if ((rx_mod->rxp_free_count < rx_cfg->num_paths) ||
   (rx_mod->rxq_free_count < rx_cfg->num_paths))
    return 0;
 } else {
  if ((rx_mod->rxp_free_count < rx_cfg->num_paths) ||
   (rx_mod->rxq_free_count < (2 * rx_cfg->num_paths)))
   return 0;
 }

 return 1;
}
