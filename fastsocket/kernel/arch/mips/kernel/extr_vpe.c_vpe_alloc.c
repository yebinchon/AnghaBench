
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vpe* vpe_handle ;
struct vpe {int state; } ;


 int MAX_VPES ;
 int VPE_STATE_INUSE ;
 struct vpe* get_vpe (int) ;

vpe_handle vpe_alloc(void)
{
 int i;
 struct vpe *v;


 for (i = 1; i < MAX_VPES; i++) {
  if ((v = get_vpe(i)) != ((void*)0)) {
   v->state = VPE_STATE_INUSE;
   return v;
  }
 }
 return ((void*)0);
}
