
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uverbs_lock_class {int name; int key; } ;
struct ib_uobject {scalar_t__ live; int mutex; int ref; struct ib_ucontext* context; int user_handle; } ;
struct ib_ucontext {int dummy; } ;


 int init_rwsem (int *) ;
 int kref_init (int *) ;
 int lockdep_set_class_and_name (int *,int *,int ) ;

__attribute__((used)) static void init_uobj(struct ib_uobject *uobj, u64 user_handle,
        struct ib_ucontext *context, struct uverbs_lock_class *c)
{
 uobj->user_handle = user_handle;
 uobj->context = context;
 kref_init(&uobj->ref);
 init_rwsem(&uobj->mutex);
 lockdep_set_class_and_name(&uobj->mutex, &c->key, c->name);
 uobj->live = 0;
}
