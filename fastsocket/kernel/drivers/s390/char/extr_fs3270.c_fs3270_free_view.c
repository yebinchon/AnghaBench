
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct fs3270 {int init; scalar_t__ rdbuf; } ;


 int idal_buffer_free (scalar_t__) ;
 int kfree (struct raw3270_view*) ;
 int raw3270_request_free (int ) ;

__attribute__((used)) static void
fs3270_free_view(struct raw3270_view *view)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) view;
 if (fp->rdbuf)
  idal_buffer_free(fp->rdbuf);
 raw3270_request_free(((struct fs3270 *) view)->init);
 kfree(view);
}
