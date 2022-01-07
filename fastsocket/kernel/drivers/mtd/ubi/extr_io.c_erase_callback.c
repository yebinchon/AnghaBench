
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct erase_info {scalar_t__ priv; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void erase_callback(struct erase_info *ei)
{
 wake_up_interruptible((wait_queue_head_t *)ei->priv);
}
