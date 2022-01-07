
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct common_obj {TYPE_1__* next_frm; TYPE_1__* cur_frm; } ;
struct TYPE_2__ {int done; int state; int ts; } ;


 int VIDEOBUF_DONE ;
 int do_gettimeofday (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vpif_process_buffer_complete(struct common_obj *common)
{
 do_gettimeofday(&common->cur_frm->ts);
 common->cur_frm->state = VIDEOBUF_DONE;
 wake_up_interruptible(&common->cur_frm->done);

 common->cur_frm = common->next_frm;
}
