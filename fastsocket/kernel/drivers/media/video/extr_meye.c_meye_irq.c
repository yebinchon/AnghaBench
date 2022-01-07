
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ mchip_mode; int proc_list; int doneq; TYPE_1__* grab_buffer; int grab_temp; scalar_t__ grab_fbuffer; int grabq; } ;
struct TYPE_3__ {int size; int sequence; int timestamp; void* state; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MCHIP_HIC_MODE_CONT_COMP ;
 scalar_t__ MCHIP_HIC_MODE_CONT_OUT ;
 int MCHIP_MM_FIR_RDY ;
 int MCHIP_MM_INTA ;
 void* MEYE_BUF_DONE ;
 int do_gettimeofday (int *) ;
 int gbufsize ;
 int kfifo_get (int ,unsigned char*,int) ;
 int kfifo_put (int ,unsigned char*,int) ;
 int mchip_comp_read_frame (int,int ,int) ;
 int mchip_cont_read_frame (int,scalar_t__,int) ;
 int mchip_free_frame () ;
 int mchip_get_frame () ;
 int mchip_hsize () ;
 int mchip_read (int ) ;
 int mchip_vsize () ;
 int memcpy (scalar_t__,int ,int) ;
 TYPE_2__ meye ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t meye_irq(int irq, void *dev_id)
{
 u32 v;
 int reqnr;
 static int sequence;

 v = mchip_read(MCHIP_MM_INTA);

 if (meye.mchip_mode != MCHIP_HIC_MODE_CONT_OUT &&
     meye.mchip_mode != MCHIP_HIC_MODE_CONT_COMP)
  return IRQ_NONE;

again:
 v = mchip_get_frame();
 if (!(v & MCHIP_MM_FIR_RDY))
  return IRQ_HANDLED;

 if (meye.mchip_mode == MCHIP_HIC_MODE_CONT_OUT) {
  if (kfifo_get(meye.grabq, (unsigned char *)&reqnr,
         sizeof(int)) != sizeof(int)) {
   mchip_free_frame();
   return IRQ_HANDLED;
  }
  mchip_cont_read_frame(v, meye.grab_fbuffer + gbufsize * reqnr,
          mchip_hsize() * mchip_vsize() * 2);
  meye.grab_buffer[reqnr].size = mchip_hsize() * mchip_vsize() * 2;
  meye.grab_buffer[reqnr].state = MEYE_BUF_DONE;
  do_gettimeofday(&meye.grab_buffer[reqnr].timestamp);
  meye.grab_buffer[reqnr].sequence = sequence++;
  kfifo_put(meye.doneq, (unsigned char *)&reqnr, sizeof(int));
  wake_up_interruptible(&meye.proc_list);
 } else {
  int size;
  size = mchip_comp_read_frame(v, meye.grab_temp, gbufsize);
  if (size == -1) {
   mchip_free_frame();
   goto again;
  }
  if (kfifo_get(meye.grabq, (unsigned char *)&reqnr,
         sizeof(int)) != sizeof(int)) {
   mchip_free_frame();
   goto again;
  }
  memcpy(meye.grab_fbuffer + gbufsize * reqnr, meye.grab_temp,
         size);
  meye.grab_buffer[reqnr].size = size;
  meye.grab_buffer[reqnr].state = MEYE_BUF_DONE;
  do_gettimeofday(&meye.grab_buffer[reqnr].timestamp);
  meye.grab_buffer[reqnr].sequence = sequence++;
  kfifo_put(meye.doneq, (unsigned char *)&reqnr, sizeof(int));
  wake_up_interruptible(&meye.proc_list);
 }
 mchip_free_frame();
 goto again;
}
