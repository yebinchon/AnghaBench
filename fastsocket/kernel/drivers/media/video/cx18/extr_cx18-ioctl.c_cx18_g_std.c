
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int std; } ;



__attribute__((used)) static int cx18_g_std(struct file *file, void *fh, v4l2_std_id *std)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 *std = cx->std;
 return 0;
}
