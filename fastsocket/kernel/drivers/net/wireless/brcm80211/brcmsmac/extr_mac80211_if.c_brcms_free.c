
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_timer {struct brcms_timer* name; struct brcms_timer* next; } ;
struct TYPE_2__ {scalar_t__ fw_cnt; } ;
struct brcms_info {struct brcms_timer* timers; int callbacks; int * pub; int * wlc; int tasklet; scalar_t__ irq; int ucode; TYPE_1__ fw; } ;


 scalar_t__ atomic_read (int *) ;
 int brcms_c_detach (int *) ;
 int brcms_c_module_unregister (int *,char*,struct brcms_info*) ;
 int brcms_debugfs_detach (int *) ;
 int brcms_ucode_data_free (int *) ;
 int free_irq (scalar_t__,struct brcms_info*) ;
 int kfree (struct brcms_timer*) ;
 int schedule () ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void brcms_free(struct brcms_info *wl)
{
 struct brcms_timer *t, *next;


 if (wl->fw.fw_cnt)
  brcms_ucode_data_free(&wl->ucode);
 if (wl->irq)
  free_irq(wl->irq, wl);


 tasklet_kill(&wl->tasklet);

 if (wl->pub) {
  brcms_debugfs_detach(wl->pub);
  brcms_c_module_unregister(wl->pub, "linux", wl);
 }


 if (wl->wlc) {
  brcms_c_detach(wl->wlc);
  wl->wlc = ((void*)0);
  wl->pub = ((void*)0);
 }




 while (atomic_read(&wl->callbacks) > 0)
  schedule();


 for (t = wl->timers; t; t = next) {
  next = t->next;



  kfree(t);
 }
}
