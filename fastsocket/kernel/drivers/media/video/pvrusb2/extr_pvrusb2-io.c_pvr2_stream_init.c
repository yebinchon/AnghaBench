
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int idle_list; int ready_list; int queued_list; int mutex; int list_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void pvr2_stream_init(struct pvr2_stream *sp)
{
 spin_lock_init(&sp->list_lock);
 mutex_init(&sp->mutex);
 INIT_LIST_HEAD(&sp->queued_list);
 INIT_LIST_HEAD(&sp->ready_list);
 INIT_LIST_HEAD(&sp->idle_list);
}
