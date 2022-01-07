
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int interpolate(int x, int xa, int xb, int ya, int yb)
{
 int bf, factor, plus;

 bf = 2 * (yb - ya) * (x - xa) / (xb - xa);
 factor = bf / 2;
 plus = bf % 2;
 return ya + factor + plus;
}
