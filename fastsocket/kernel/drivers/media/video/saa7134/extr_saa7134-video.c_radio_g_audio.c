
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int name; } ;
struct file {int dummy; } ;


 int memset (struct v4l2_audio*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int radio_g_audio(struct file *file, void *priv,
     struct v4l2_audio *a)
{
 memset(a, 0, sizeof(*a));
 strcpy(a->name, "Radio");
 return 0;
}
