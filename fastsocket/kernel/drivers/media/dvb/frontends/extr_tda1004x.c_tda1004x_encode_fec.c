
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;






__attribute__((used)) static int tda1004x_encode_fec(int fec)
{

 switch (fec) {
 case 132:
  return 0;
 case 131:
  return 1;
 case 130:
  return 2;
 case 129:
  return 3;
 case 128:
  return 4;
 }


 return -EINVAL;
}
