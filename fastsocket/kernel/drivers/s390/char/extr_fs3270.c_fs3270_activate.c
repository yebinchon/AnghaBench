
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct raw3270_view {int dummy; } ;
struct fs3270 {scalar_t__ rdbuf_size; int active; TYPE_2__* init; TYPE_5__* rdbuf; } ;
struct TYPE_12__ {char** data; } ;
struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_11__ {int rc; int (* callback ) (TYPE_2__*,int *) ;scalar_t__ rescnt; TYPE_1__ ccw; } ;


 int TC_EWRITEA ;
 char TO_IC ;
 char TO_SBA ;
 char TW_KR ;
 int fs3270_reset_callback (TYPE_2__*,int *) ;
 int fs3270_restore_callback (TYPE_2__*,int *) ;
 int raw3270_request_final (TYPE_2__*) ;
 int raw3270_request_set_cmd (TYPE_2__*,int ) ;
 int raw3270_request_set_idal (TYPE_2__*,TYPE_5__*) ;
 int raw3270_start_locked (struct raw3270_view*,TYPE_2__*) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int
fs3270_activate(struct raw3270_view *view)
{
 struct fs3270 *fp;
 char *cp;
 int rc;

 fp = (struct fs3270 *) view;


 if (!raw3270_request_final(fp->init))
  return 0;

 if (fp->rdbuf_size == 0) {

  raw3270_request_set_cmd(fp->init, TC_EWRITEA);
  fp->init->callback = fs3270_reset_callback;
 } else {

  raw3270_request_set_cmd(fp->init, TC_EWRITEA);
  raw3270_request_set_idal(fp->init, fp->rdbuf);
  fp->init->ccw.count = fp->rdbuf_size;
  cp = fp->rdbuf->data[0];
  cp[0] = TW_KR;
  cp[1] = TO_SBA;
  cp[2] = cp[6];
  cp[3] = cp[7];
  cp[4] = TO_IC;
  cp[5] = TO_SBA;
  cp[6] = 0x40;
  cp[7] = 0x40;
  fp->init->rescnt = 0;
  fp->init->callback = fs3270_restore_callback;
 }
 rc = fp->init->rc = raw3270_start_locked(view, fp->init);
 if (rc)
  fp->init->callback(fp->init, ((void*)0));
 else
  fp->active = 1;
 return rc;
}
