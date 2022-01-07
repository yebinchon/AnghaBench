
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int RX_Q_ENTRY_LENGTH_MASK ;

__attribute__((used)) static inline u16 rx_q_entry_to_length (u32 x) {
  return x & RX_Q_ENTRY_LENGTH_MASK;
}
