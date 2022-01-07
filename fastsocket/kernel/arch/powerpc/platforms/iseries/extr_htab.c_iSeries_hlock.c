
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * iSeries_hlocks ;
 int spin_lock (int *) ;

__attribute__((used)) static inline void iSeries_hlock(unsigned long slot)
{
 if (slot & 0x8)
  slot = ~slot;
 spin_lock(&iSeries_hlocks[(slot >> 4) & 0x3f]);
}
