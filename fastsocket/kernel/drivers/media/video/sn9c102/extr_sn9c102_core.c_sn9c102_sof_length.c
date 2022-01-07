
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_device {int bridge; } ;
__attribute__((used)) static size_t sn9c102_sof_length(struct sn9c102_device* cam)
{
 switch (cam->bridge) {
 case 132:
 case 131:
  return 12;
 case 130:
  return 18;
 case 129:
 case 128:
  return 62;
 }

 return 0;
}
