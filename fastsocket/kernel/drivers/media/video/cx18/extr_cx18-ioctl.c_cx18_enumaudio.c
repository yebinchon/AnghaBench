
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int index; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int cx18_get_audio_input (struct cx18*,int ,struct v4l2_audio*) ;

__attribute__((used)) static int cx18_enumaudio(struct file *file, void *fh, struct v4l2_audio *vin)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 return cx18_get_audio_input(cx, vin->index, vin);
}
