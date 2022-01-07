
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RX_RING_LEN ;

__attribute__((used)) static inline u16 prev_rx(u16 rx) { return (rx-1)&(RX_RING_LEN-1); }
