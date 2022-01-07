
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int cxgbi_sock_compute_wscale(unsigned int win)
{
 unsigned int wscale = 0;

 while (wscale < 14 && (65535 << wscale) < win)
  wscale++;
 return wscale;
}
