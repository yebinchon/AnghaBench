
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int cx18_get_input (struct cx18*,int ,struct v4l2_input*) ;

__attribute__((used)) static int cx18_enum_input(struct file *file, void *fh, struct v4l2_input *vin)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;


 return cx18_get_input(cx, vin->index, vin);
}
