
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * iSeries_hlocks ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void iSeries_hunlock(unsigned long slot)
{
 if (slot & 0x8)
  slot = ~slot;
 spin_unlock(&iSeries_hlocks[(slot >> 4) & 0x3f]);
}
