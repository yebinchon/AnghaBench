
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct raw3270_view {int dummy; } ;
struct fs3270 {TYPE_1__* init; TYPE_4__* rdbuf; scalar_t__ active; } ;
struct TYPE_9__ {int* data; int size; } ;
struct TYPE_8__ {int (* callback ) (TYPE_1__*,int *) ;scalar_t__ rc; scalar_t__ rescnt; } ;


 int TC_RDBUF ;
 int fs3270_save_callback (TYPE_1__*,int *) ;
 int raw3270_request_final (TYPE_1__*) ;
 int raw3270_request_set_cmd (TYPE_1__*,int ) ;
 int raw3270_request_set_idal (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ raw3270_start_locked (struct raw3270_view*,TYPE_1__*) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static void
fs3270_deactivate(struct raw3270_view *view)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) view;
 fp->active = 0;


 if (!raw3270_request_final(fp->init))
  return;


 raw3270_request_set_cmd(fp->init, TC_RDBUF);





 fp->rdbuf->data[0] += 5;
 fp->rdbuf->size -= 5;
 raw3270_request_set_idal(fp->init, fp->rdbuf);
 fp->init->rescnt = 0;
 fp->init->callback = fs3270_save_callback;


 fp->init->rc = raw3270_start_locked(view, fp->init);
 if (fp->init->rc)
  fp->init->callback(fp->init, ((void*)0));
}
