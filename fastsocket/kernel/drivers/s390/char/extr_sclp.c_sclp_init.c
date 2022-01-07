
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int ctl_set_bit (int ,int) ;
 int ext_int_info_hwc ;
 int init_timer (int *) ;
 int list_add (int *,int *) ;
 int register_early_external_interrupt (int,int ,int *) ;
 int register_reboot_notifier (int *) ;
 int sclp_check_interface () ;
 int sclp_init_mask (int) ;
 scalar_t__ sclp_init_state ;
 scalar_t__ sclp_init_state_initialized ;
 scalar_t__ sclp_init_state_initializing ;
 scalar_t__ sclp_init_state_uninitialized ;
 int sclp_interrupt_handler ;
 int sclp_lock ;
 int sclp_reboot_notifier ;
 int sclp_reg_list ;
 int sclp_req_queue ;
 int sclp_request_timer ;
 TYPE_1__ sclp_state_change_event ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int
sclp_init(void)
{
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&sclp_lock, flags);

 if (sclp_init_state != sclp_init_state_uninitialized)
  goto fail_unlock;
 sclp_init_state = sclp_init_state_initializing;

 INIT_LIST_HEAD(&sclp_req_queue);
 INIT_LIST_HEAD(&sclp_reg_list);
 list_add(&sclp_state_change_event.list, &sclp_reg_list);
 init_timer(&sclp_request_timer);

 spin_unlock_irqrestore(&sclp_lock, flags);
 rc = sclp_check_interface();
 spin_lock_irqsave(&sclp_lock, flags);
 if (rc)
  goto fail_init_state_uninitialized;

 rc = register_reboot_notifier(&sclp_reboot_notifier);
 if (rc)
  goto fail_init_state_uninitialized;

 rc = register_early_external_interrupt(0x2401, sclp_interrupt_handler,
            &ext_int_info_hwc);
 if (rc)
  goto fail_unregister_reboot_notifier;
 sclp_init_state = sclp_init_state_initialized;
 spin_unlock_irqrestore(&sclp_lock, flags);


 ctl_set_bit(0, 9);
 sclp_init_mask(1);
 return 0;

fail_unregister_reboot_notifier:
 unregister_reboot_notifier(&sclp_reboot_notifier);
fail_init_state_uninitialized:
 sclp_init_state = sclp_init_state_uninitialized;
fail_unlock:
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
