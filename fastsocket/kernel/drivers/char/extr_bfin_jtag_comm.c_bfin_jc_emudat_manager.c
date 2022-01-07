
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tty_struct {int dummy; } ;
struct TYPE_5__ {int tail; int head; } ;


 int EMUDIF ;
 int EMUDOF ;
 int HZ ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int * bfin_jc_tty ;
 int bfin_jc_tty_mutex ;
 TYPE_1__ bfin_jc_write_buf ;
 int bfin_read_DBGSTAT () ;
 int bfin_read_emudat () ;
 int bfin_write_emudat (int) ;
 int bfin_write_emudat_chars (int ,int ,int ,int ) ;
 int circ_byte (TYPE_1__*,int) ;
 int circ_cnt (TYPE_1__*) ;
 scalar_t__ circ_empty (TYPE_1__*) ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int schedule () ;
 int schedule_timeout_interruptible (int ) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,size_t) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static int
bfin_jc_emudat_manager(void *arg)
{
 uint32_t inbound_len = 0, outbound_len = 0;

 while (!kthread_should_stop()) {

  if (bfin_jc_tty == ((void*)0) && circ_empty(&bfin_jc_write_buf)) {
   pr_debug("waiting for readers\n");
   __set_current_state(TASK_UNINTERRUPTIBLE);
   schedule();
   __set_current_state(TASK_RUNNING);
  }


  if (!(bfin_read_DBGSTAT() & EMUDIF) && circ_empty(&bfin_jc_write_buf)) {
   pr_debug("waiting for data (in_len = %i) (circ: %i %i)\n",
    inbound_len, bfin_jc_write_buf.tail, bfin_jc_write_buf.head);
   if (inbound_len)
    schedule();
   else
    schedule_timeout_interruptible(HZ);
   continue;
  }


  if (bfin_read_DBGSTAT() & EMUDIF) {
   struct tty_struct *tty;
   mutex_lock(&bfin_jc_tty_mutex);
   tty = (struct tty_struct *)bfin_jc_tty;
   if (tty != ((void*)0)) {
    uint32_t emudat = bfin_read_emudat();
    if (inbound_len == 0) {
     pr_debug("incoming length: 0x%08x\n", emudat);
     inbound_len = emudat;
    } else {
     size_t num_chars = (4 <= inbound_len ? 4 : inbound_len);
     pr_debug("  incoming data: 0x%08x (pushing %zu)\n", emudat, num_chars);
     inbound_len -= num_chars;
     tty_insert_flip_string(tty, (unsigned char *)&emudat, num_chars);
     tty_flip_buffer_push(tty);
    }
   }
   mutex_unlock(&bfin_jc_tty_mutex);
  }


  if (!(bfin_read_DBGSTAT() & EMUDOF) && !circ_empty(&bfin_jc_write_buf)) {
   if (outbound_len == 0) {
    outbound_len = circ_cnt(&bfin_jc_write_buf);
    bfin_write_emudat(outbound_len);
    pr_debug("outgoing length: 0x%08x\n", outbound_len);
   } else {
    struct tty_struct *tty;
    int tail = bfin_jc_write_buf.tail;
    size_t ate = (4 <= outbound_len ? 4 : outbound_len);
    uint32_t emudat =
    bfin_write_emudat_chars(
     circ_byte(&bfin_jc_write_buf, tail + 0),
     circ_byte(&bfin_jc_write_buf, tail + 1),
     circ_byte(&bfin_jc_write_buf, tail + 2),
     circ_byte(&bfin_jc_write_buf, tail + 3)
    );
    bfin_jc_write_buf.tail += ate;
    outbound_len -= ate;
    mutex_lock(&bfin_jc_tty_mutex);
    tty = (struct tty_struct *)bfin_jc_tty;
    if (tty)
     tty_wakeup(tty);
    mutex_unlock(&bfin_jc_tty_mutex);
    pr_debug("  outgoing data: 0x%08x (pushing %zu)\n", emudat, ate);
   }
  }
 }

 __set_current_state(TASK_RUNNING);
 return 0;
}
