
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl022 {int virtbase; } ;


 int CLEAR_ALL_INTERRUPTS ;
 int DEFAULT_SSP_REG_CPSR ;
 int DEFAULT_SSP_REG_CR0 ;
 int DEFAULT_SSP_REG_CR1 ;
 int DEFAULT_SSP_REG_DMACR ;
 int DISABLE_ALL_INTERRUPTS ;
 int SSP_CPSR (int ) ;
 int SSP_CR0 (int ) ;
 int SSP_CR1 (int ) ;
 int SSP_DMACR (int ) ;
 int SSP_ICR (int ) ;
 int SSP_IMSC (int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void load_ssp_default_config(struct pl022 *pl022)
{
 writew(DEFAULT_SSP_REG_CR0, SSP_CR0(pl022->virtbase));
 writew(DEFAULT_SSP_REG_CR1, SSP_CR1(pl022->virtbase));
 writew(DEFAULT_SSP_REG_DMACR, SSP_DMACR(pl022->virtbase));
 writew(DEFAULT_SSP_REG_CPSR, SSP_CPSR(pl022->virtbase));
 writew(DISABLE_ALL_INTERRUPTS, SSP_IMSC(pl022->virtbase));
 writew(CLEAR_ALL_INTERRUPTS, SSP_ICR(pl022->virtbase));
}
