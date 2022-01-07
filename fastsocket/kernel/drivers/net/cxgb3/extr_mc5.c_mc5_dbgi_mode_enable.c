
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {scalar_t__ mode; int adapter; } ;


 int A_MC5_DB_CONFIG ;
 int F_DBGIEN ;
 scalar_t__ MC5_MODE_72_BIT ;
 int V_TMMODE (int) ;
 int t3_write_reg (int ,int ,int) ;

__attribute__((used)) static inline void mc5_dbgi_mode_enable(const struct mc5 *mc5)
{
 t3_write_reg(mc5->adapter, A_MC5_DB_CONFIG,
       V_TMMODE(mc5->mode == MC5_MODE_72_BIT) | F_DBGIEN);
}
