
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int std; } ;
struct file {int dummy; } ;



__attribute__((used)) static int ivtv_g_std(struct file *file, void *fh, v4l2_std_id *std)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 *std = itv->std;
 return 0;
}
