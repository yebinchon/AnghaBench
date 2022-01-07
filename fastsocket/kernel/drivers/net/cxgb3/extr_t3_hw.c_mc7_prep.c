
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc7 {char const* name; int width; int size; scalar_t__ offset; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_MC7_CFG ;
 scalar_t__ G_DEN (int ) ;
 int G_WIDTH (int ) ;
 scalar_t__ MC7_PMRX_BASE_ADDR ;
 scalar_t__ M_DEN ;
 int mc7_calc_size (int ) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;

__attribute__((used)) static void mc7_prep(struct adapter *adapter, struct mc7 *mc7,
       unsigned int base_addr, const char *name)
{
 u32 cfg;

 mc7->adapter = adapter;
 mc7->name = name;
 mc7->offset = base_addr - MC7_PMRX_BASE_ADDR;
 cfg = t3_read_reg(adapter, mc7->offset + A_MC7_CFG);
 mc7->size = G_DEN(cfg) == M_DEN ? 0 : mc7_calc_size(cfg);
 mc7->width = G_WIDTH(cfg);
}
