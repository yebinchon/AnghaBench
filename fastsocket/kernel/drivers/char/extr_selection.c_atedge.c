
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int atedge(const int p, int size_row)
{
 return (!(p % size_row) || !((p + 2) % size_row));
}
