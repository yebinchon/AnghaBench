
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl12xx_priv {TYPE_2__* rx_mem_addr; } ;
struct wl1271_acx_mem_map {int packet_memory_pool_start; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct wl1271 {struct wl12xx_priv* priv; struct wl1271_acx_mem_map* target_mem_map; TYPE_1__ chip; } ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ addr_extra; } ;


 scalar_t__ CHIP_ID_128X_PG20 ;
 int RX_MEM_BLOCK_MASK ;
 int WL1271_SLV_REG_DATA ;
 scalar_t__ le32_to_cpu (int ) ;
 int wlcore_write (struct wl1271*,int ,TYPE_2__*,int,int) ;

__attribute__((used)) static int wl127x_prepare_read(struct wl1271 *wl, u32 rx_desc, u32 len)
{
 int ret;

 if (wl->chip.id != CHIP_ID_128X_PG20) {
  struct wl1271_acx_mem_map *wl_mem_map = wl->target_mem_map;
  struct wl12xx_priv *priv = wl->priv;






  u32 mem_block = rx_desc & RX_MEM_BLOCK_MASK;

  priv->rx_mem_addr->addr = (mem_block << 8) +
   le32_to_cpu(wl_mem_map->packet_memory_pool_start);

  priv->rx_mem_addr->addr_extra = priv->rx_mem_addr->addr + 4;

  ret = wlcore_write(wl, WL1271_SLV_REG_DATA, priv->rx_mem_addr,
       sizeof(*priv->rx_mem_addr), 0);
  if (ret < 0)
   return ret;
 }

 return 0;
}
