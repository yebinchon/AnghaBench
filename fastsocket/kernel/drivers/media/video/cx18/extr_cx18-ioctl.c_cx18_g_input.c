
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {unsigned int active_input; } ;



__attribute__((used)) static int cx18_g_input(struct file *file, void *fh, unsigned int *i)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 *i = cx->active_input;
 return 0;
}
