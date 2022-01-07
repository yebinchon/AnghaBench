
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audioout {int name; } ;


 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int radio_si4713_fill_audout(struct v4l2_audioout *vao)
{

 strlcpy(vao->name, "FM Modulator Audio Out", 32);

 return 0;
}
