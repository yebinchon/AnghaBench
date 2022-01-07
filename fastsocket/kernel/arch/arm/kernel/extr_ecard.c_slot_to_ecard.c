
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecard_t ;


 unsigned int MAX_ECARDS ;
 int ** slot_to_expcard ;

__attribute__((used)) static inline ecard_t *slot_to_ecard(unsigned int slot)
{
 return slot < MAX_ECARDS ? slot_to_expcard[slot] : ((void*)0);
}
