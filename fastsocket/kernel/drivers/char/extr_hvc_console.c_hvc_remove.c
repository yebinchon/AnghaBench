
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct hvc_struct {size_t index; int kref; int lock; int tty; } ;


 size_t MAX_NR_HVC_CONSOLES ;
 int destroy_hvc_struct ;
 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tty_struct* tty_kref_get (int ) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_vhangup (struct tty_struct*) ;
 int* vtermnos ;

int hvc_remove(struct hvc_struct *hp)
{
 unsigned long flags;
 struct tty_struct *tty;

 spin_lock_irqsave(&hp->lock, flags);
 tty = tty_kref_get(hp->tty);

 if (hp->index < MAX_NR_HVC_CONSOLES)
  vtermnos[hp->index] = -1;



 spin_unlock_irqrestore(&hp->lock, flags);







 kref_put(&hp->kref, destroy_hvc_struct);




 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }
 return 0;
}
