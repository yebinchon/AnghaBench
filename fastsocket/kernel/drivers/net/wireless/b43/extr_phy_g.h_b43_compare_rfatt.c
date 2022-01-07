
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_rfatt {scalar_t__ att; scalar_t__ with_padmix; } ;



__attribute__((used)) static inline bool b43_compare_rfatt(const struct b43_rfatt *a,
         const struct b43_rfatt *b)
{
 return ((a->att == b->att) &&
  (a->with_padmix == b->with_padmix));
}
