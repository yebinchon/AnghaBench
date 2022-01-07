
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tid_info {int tids_in_use; TYPE_1__* tid_tab; } ;
struct t3cdev {int dummy; } ;
struct cxgb3_client {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;
struct TYPE_3__ {void* ctx; struct cxgb3_client* client; } ;


 TYPE_2__* T3C_DATA (struct t3cdev*) ;
 int atomic_inc (int *) ;

void cxgb3_insert_tid(struct t3cdev *tdev, struct cxgb3_client *client,
        void *ctx, unsigned int tid)
{
 struct tid_info *t = &(T3C_DATA(tdev))->tid_maps;

 t->tid_tab[tid].client = client;
 t->tid_tab[tid].ctx = ctx;
 atomic_inc(&t->tids_in_use);
}
