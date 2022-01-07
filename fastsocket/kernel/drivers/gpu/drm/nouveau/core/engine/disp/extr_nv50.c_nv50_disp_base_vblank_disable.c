
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_event {int priv; } ;


 int nv_mask (int ,int,int,int ) ;

__attribute__((used)) static void
nv50_disp_base_vblank_disable(struct nouveau_event *event, int head)
{
 nv_mask(event->priv, 0x61002c, (4 << head), 0);
}
