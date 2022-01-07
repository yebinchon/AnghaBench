
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_event {int priv; } ;


 int nv_mask (int ,int,int,int) ;

__attribute__((used)) static void
nvd0_disp_base_vblank_disable(struct nouveau_event *event, int head)
{
 nv_mask(event->priv, 0x6100c0 + (head * 0x800), 0x00000001, 0x00000000);
}
