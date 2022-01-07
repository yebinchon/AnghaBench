
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;


 size_t ARRAY_SIZE (size_t*) ;
 int EINVAL ;
 int const IL_TX_FIFO_BE ;
 int const IL_TX_FIFO_BK ;
 int const IL_TX_FIFO_VI ;
 int const IL_TX_FIFO_VO ;
 scalar_t__ likely (int) ;
 size_t* tid_to_ac ;

__attribute__((used)) static inline int
il4965_get_fifo_from_tid(u16 tid)
{
 const u8 ac_to_fifo[] = {
  IL_TX_FIFO_VO,
  IL_TX_FIFO_VI,
  IL_TX_FIFO_BE,
  IL_TX_FIFO_BK,
 };

 if (likely(tid < ARRAY_SIZE(tid_to_ac)))
  return ac_to_fifo[tid_to_ac[tid]];


 return -EINVAL;
}
