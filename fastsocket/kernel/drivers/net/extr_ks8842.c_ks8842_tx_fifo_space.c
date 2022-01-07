
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks8842_adapter {int dummy; } ;


 int REG_TXMIR ;
 int ks8842_read16 (struct ks8842_adapter*,int,int ) ;

__attribute__((used)) static inline u16 ks8842_tx_fifo_space(struct ks8842_adapter *adapter)
{
 return ks8842_read16(adapter, 16, REG_TXMIR) & 0x1fff;
}
