
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int clip_range(int val)
{
 if (val < 0)
  val = 0;
 return val;
}
