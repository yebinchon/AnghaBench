
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3vram_priv {int dummy; } ;
struct ps3_system_bus_device {int dummy; } ;


 int DMA_NOTIFIER_HANDLE_BASE ;
 int DOWNLOAD_SUBCH ;
 int NOTIFIER ;
 int UPLOAD_SUBCH ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 int ps3vram_begin_ring (struct ps3vram_priv*,int ,int,int) ;
 int ps3vram_fire_ring (struct ps3_system_bus_device*) ;
 int ps3vram_out_ring (struct ps3vram_priv*,int) ;

__attribute__((used)) static void ps3vram_bind(struct ps3_system_bus_device *dev)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);

 ps3vram_begin_ring(priv, UPLOAD_SUBCH, 0, 1);
 ps3vram_out_ring(priv, 0x31337303);
 ps3vram_begin_ring(priv, UPLOAD_SUBCH, 0x180, 3);
 ps3vram_out_ring(priv, DMA_NOTIFIER_HANDLE_BASE + NOTIFIER);
 ps3vram_out_ring(priv, 0xfeed0001);
 ps3vram_out_ring(priv, 0xfeed0000);

 ps3vram_begin_ring(priv, DOWNLOAD_SUBCH, 0, 1);
 ps3vram_out_ring(priv, 0x3137c0de);
 ps3vram_begin_ring(priv, DOWNLOAD_SUBCH, 0x180, 3);
 ps3vram_out_ring(priv, DMA_NOTIFIER_HANDLE_BASE + NOTIFIER);
 ps3vram_out_ring(priv, 0xfeed0000);
 ps3vram_out_ring(priv, 0xfeed0001);

 ps3vram_fire_ring(dev);
}
