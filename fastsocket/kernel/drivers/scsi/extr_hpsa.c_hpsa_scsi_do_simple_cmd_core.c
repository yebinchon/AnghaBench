
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct CommandList {int * waiting; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*) ;
 int wait ;
 int wait_for_completion (int *) ;

__attribute__((used)) static inline void hpsa_scsi_do_simple_cmd_core(struct ctlr_info *h,
 struct CommandList *c)
{
 DECLARE_COMPLETION_ONSTACK(wait);

 c->waiting = &wait;
 enqueue_cmd_and_start_io(h, c);
 wait_for_completion(&wait);
}
