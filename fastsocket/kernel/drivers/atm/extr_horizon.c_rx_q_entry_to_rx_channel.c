
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int RX_CHANNEL_MASK ;
 int RX_Q_ENTRY_CHANNEL_SHIFT ;

__attribute__((used)) static inline u16 rx_q_entry_to_rx_channel (u32 x) {
  return (x>>RX_Q_ENTRY_CHANNEL_SHIFT) & RX_CHANNEL_MASK;
}
