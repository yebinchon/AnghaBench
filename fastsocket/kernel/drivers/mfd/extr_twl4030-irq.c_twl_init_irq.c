
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct irq_chip {char* name; int ack; } ;
struct TYPE_2__ {int ack; } ;


 int ESRCH ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int TWL4030_MODULE_INT ;
 int activate_irq (int) ;
 int * create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int *) ;
 struct irq_chip dummy_irq_chip ;
 int free_irq (int,int *) ;
 int * handle_simple_irq ;
 int handle_twl4030_pih ;
 int init_completion (int *) ;
 int irq_event ;
 struct task_struct* kthread_run (int ,void*,char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,char*,int,unsigned int,int) ;
 int request_irq (int,int ,int ,char*,int *) ;
 int set_irq_chip_and_handler (int,struct irq_chip*,int *) ;
 int twl4030_init_sih_modules (int ) ;
 unsigned int twl4030_irq_base ;
 int twl4030_irq_next ;
 int twl4030_irq_thread ;
 TYPE_1__ twl4030_sih_irq_chip ;
 int twl4030_sih_setup (int ) ;
 int twl_irq_line ;
 int * wq ;

int twl_init_irq(int irq_num, unsigned irq_base, unsigned irq_end)
{
 static struct irq_chip twl4030_irq_chip;

 int status;
 int i;
 struct task_struct *task;





 status = twl4030_init_sih_modules(twl_irq_line);
 if (status < 0)
  return status;

 wq = create_singlethread_workqueue("twl4030-irqchip");
 if (!wq) {
  pr_err("twl4030: workqueue FAIL\n");
  return -ESRCH;
 }

 twl4030_irq_base = irq_base;




 twl4030_irq_chip = dummy_irq_chip;
 twl4030_irq_chip.name = "twl4030";

 twl4030_sih_irq_chip.ack = dummy_irq_chip.ack;

 for (i = irq_base; i < irq_end; i++) {
  set_irq_chip_and_handler(i, &twl4030_irq_chip,
    handle_simple_irq);
  activate_irq(i);
 }
 twl4030_irq_next = i;
 pr_info("twl4030: %s (irq %d) chaining IRQs %d..%d\n", "PIH",
   irq_num, irq_base, twl4030_irq_next - 1);


 status = twl4030_sih_setup(TWL4030_MODULE_INT);
 if (status < 0) {
  pr_err("twl4030: sih_setup PWR INT --> %d\n", status);
  goto fail;
 }




 init_completion(&irq_event);

 status = request_irq(irq_num, handle_twl4030_pih, IRQF_DISABLED,
    "TWL4030-PIH", &irq_event);
 if (status < 0) {
  pr_err("twl4030: could not claim irq%d: %d\n", irq_num, status);
  goto fail_rqirq;
 }

 task = kthread_run(twl4030_irq_thread, (void *)irq_num, "twl4030-irq");
 if (IS_ERR(task)) {
  pr_err("twl4030: could not create irq %d thread!\n", irq_num);
  status = PTR_ERR(task);
  goto fail_kthread;
 }
 return status;
fail_kthread:
 free_irq(irq_num, &irq_event);
fail_rqirq:

fail:
 for (i = irq_base; i < irq_end; i++)
  set_irq_chip_and_handler(i, ((void*)0), ((void*)0));
 destroy_workqueue(wq);
 wq = ((void*)0);
 return status;
}
