
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int name; } ;
struct file {int dummy; } ;


 int strcpy (int ,char*) ;

__attribute__((used)) static int saa7134_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 strcpy(a->name, "audio");
 return 0;
}
