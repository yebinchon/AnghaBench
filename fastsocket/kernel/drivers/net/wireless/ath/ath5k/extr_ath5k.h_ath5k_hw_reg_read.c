
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ath5k_hw {scalar_t__ iobase; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 ath5k_hw_reg_read(struct ath5k_hw *ah, u16 reg)
{
 return ioread32(ah->iobase + reg);
}
