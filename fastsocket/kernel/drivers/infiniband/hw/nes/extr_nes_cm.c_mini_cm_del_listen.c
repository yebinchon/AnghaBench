
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_listener {int * cm_id; int listener_state; } ;
struct nes_cm_core {int dummy; } ;


 int NES_CM_LISTENER_PASSIVE_STATE ;
 int mini_cm_dec_refcnt_listen (struct nes_cm_core*,struct nes_cm_listener*,int) ;

__attribute__((used)) static int mini_cm_del_listen(struct nes_cm_core *cm_core,
         struct nes_cm_listener *listener)
{
 listener->listener_state = NES_CM_LISTENER_PASSIVE_STATE;
 listener->cm_id = ((void*)0);
 return mini_cm_dec_refcnt_listen(cm_core, listener, 1);
}
