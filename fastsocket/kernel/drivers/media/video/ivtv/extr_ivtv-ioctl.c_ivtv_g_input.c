
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {unsigned int active_input; } ;
struct file {int dummy; } ;



__attribute__((used)) static int ivtv_g_input(struct file *file, void *fh, unsigned int *i)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 *i = itv->active_input;

 return 0;
}
