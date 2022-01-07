
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_event {int priv; } ;


 int nv_mask (int ,int,int,int) ;
 int nv_wr32 (int ,int,int) ;

__attribute__((used)) static void
nv10_gpio_intr_enable(struct nouveau_event *event, int line)
{
 nv_wr32(event->priv, 0x001104, 0x00010001 << line);
 nv_mask(event->priv, 0x001144, 0x00010001 << line, 0x00010001 << line);
}
