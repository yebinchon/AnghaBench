
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ps3vram_priv {int dummy; } ;


 int ps3vram_out_ring (struct ps3vram_priv*,int) ;

__attribute__((used)) static void ps3vram_begin_ring(struct ps3vram_priv *priv, u32 chan, u32 tag,
          u32 size)
{
 ps3vram_out_ring(priv, (size << 18) | (chan << 13) | tag);
}
