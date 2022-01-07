
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ sbase; } ;
typedef enum wbcir_bank { ____Placeholder_wbcir_bank } wbcir_bank ;


 scalar_t__ WBCIR_REG_SP3_BSR ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void
wbcir_select_bank(struct wbcir_data *data, enum wbcir_bank bank)
{
 outb(bank, data->sbase + WBCIR_REG_SP3_BSR);
}
