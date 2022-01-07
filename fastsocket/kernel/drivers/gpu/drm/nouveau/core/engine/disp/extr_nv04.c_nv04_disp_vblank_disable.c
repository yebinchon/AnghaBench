
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_event {int priv; } ;


 int nv_wr32 (int ,int,int) ;

__attribute__((used)) static void
nv04_disp_vblank_disable(struct nouveau_event *event, int head)
{
 nv_wr32(event->priv, 0x600140 + (head * 0x2000) , 0x00000000);
}
