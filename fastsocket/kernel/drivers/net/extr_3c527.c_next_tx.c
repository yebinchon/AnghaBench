
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int TX_RING_LEN ;

__attribute__((used)) static inline u16 next_tx(u16 tx) { return (tx+1)&(TX_RING_LEN-1); }
