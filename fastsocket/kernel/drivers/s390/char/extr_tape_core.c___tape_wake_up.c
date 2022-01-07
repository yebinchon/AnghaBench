
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct tape_request {int * callback; } ;


 int wake_up (int *) ;

__attribute__((used)) static void
__tape_wake_up(struct tape_request *request, void *data)
{
 request->callback = ((void*)0);
 wake_up((wait_queue_head_t *) data);
}
