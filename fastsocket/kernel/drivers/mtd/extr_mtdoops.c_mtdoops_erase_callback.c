
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct erase_info {scalar_t__ priv; } ;


 int wake_up (int *) ;

__attribute__((used)) static void mtdoops_erase_callback(struct erase_info *done)
{
 wait_queue_head_t *wait_q = (wait_queue_head_t *)done->priv;
 wake_up(wait_q);
}
