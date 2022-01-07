
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_VECTOR ;

__attribute__((used)) static inline int is_higher_irq(int pending, int inservice)
{
 return ((pending > inservice)
   || ((pending != NULL_VECTOR)
    && (inservice == NULL_VECTOR)));
}
