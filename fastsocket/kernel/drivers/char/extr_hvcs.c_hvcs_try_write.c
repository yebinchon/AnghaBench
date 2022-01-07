
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tty_struct {int dummy; } ;
struct hvcs_struct {int todo_mask; int chars_in_buffer; int * buffer; struct tty_struct* tty; TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 int HVCS_TRY_WRITE ;
 int hvc_put_chars (int ,int *,int ) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void hvcs_try_write(struct hvcs_struct *hvcsd)
{
 uint32_t unit_address = hvcsd->vdev->unit_address;
 struct tty_struct *tty = hvcsd->tty;
 int sent;

 if (hvcsd->todo_mask & HVCS_TRY_WRITE) {

  sent = hvc_put_chars(unit_address,
    &hvcsd->buffer[0],
    hvcsd->chars_in_buffer );
  if (sent > 0) {
   hvcsd->chars_in_buffer = 0;

   hvcsd->todo_mask &= ~(HVCS_TRY_WRITE);
   if (tty) {
    tty_wakeup(tty);
   }
  }
 }
}
