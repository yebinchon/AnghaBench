
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ib_ucontext {int device; } ;
struct TYPE_3__ {int uar; int db_tab; } ;


 int kfree (TYPE_1__*) ;
 int mthca_cleanup_user_db_tab (int ,int *,int ) ;
 int mthca_uar_free (int ,int *) ;
 int to_mdev (int ) ;
 TYPE_1__* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int mthca_dealloc_ucontext(struct ib_ucontext *context)
{
 mthca_cleanup_user_db_tab(to_mdev(context->device), &to_mucontext(context)->uar,
      to_mucontext(context)->db_tab);
 mthca_uar_free(to_mdev(context->device), &to_mucontext(context)->uar);
 kfree(to_mucontext(context));

 return 0;
}
