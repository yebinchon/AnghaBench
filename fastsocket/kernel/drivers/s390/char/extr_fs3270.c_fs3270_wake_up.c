
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct raw3270_request {int dummy; } ;


 int wake_up (int *) ;

__attribute__((used)) static void
fs3270_wake_up(struct raw3270_request *rq, void *data)
{
 wake_up((wait_queue_head_t *) data);
}
