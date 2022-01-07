
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HI_OBP_ADDRESS ;
 unsigned long LOW_OBP_ADDRESS ;

__attribute__((used)) static inline int in_obp_range(unsigned long vaddr)
{
 return (vaddr >= LOW_OBP_ADDRESS &&
  vaddr < HI_OBP_ADDRESS);
}
