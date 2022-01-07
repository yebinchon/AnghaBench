
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hostap_cmd_queue {int dummy; } ;
struct TYPE_4__ {int cmdlock; } ;
typedef TYPE_1__ local_info_t ;


 int __hostap_cmd_queue_free (TYPE_1__*,struct hostap_cmd_queue*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void hostap_cmd_queue_free(local_info_t *local,
      struct hostap_cmd_queue *entry,
      int del_req)
{
 unsigned long flags;

 spin_lock_irqsave(&local->cmdlock, flags);
 __hostap_cmd_queue_free(local, entry, del_req);
 spin_unlock_irqrestore(&local->cmdlock, flags);
}
