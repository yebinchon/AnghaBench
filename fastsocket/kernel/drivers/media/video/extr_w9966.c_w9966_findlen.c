
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static int w9966_findlen(int near, int size, int maxlen)
{
 int bestlen = size;
 int besterr = abs(near - bestlen);
 int len;

 for(len = size+1;len < maxlen;len++)
 {
  int err;
  if ( ((64*size) %len) != 0)
   continue;

  err = abs(near - len);


  if (err > besterr)
   break;

  besterr = err;
  bestlen = len;
 }

 return bestlen;
}
