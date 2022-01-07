
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ov7670_sine (int) ;

__attribute__((used)) static int ov7670_cosine(int theta)
{
 theta = 90 - theta;
 if (theta > 180)
  theta -= 360;
 else if (theta < -180)
  theta += 360;
 return ov7670_sine(theta);
}
