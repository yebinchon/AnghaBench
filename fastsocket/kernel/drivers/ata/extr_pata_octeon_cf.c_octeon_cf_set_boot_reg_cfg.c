
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tim_mult; int en; scalar_t__ ale; scalar_t__ orbit; scalar_t__ oe_ext; scalar_t__ we_ext; scalar_t__ sam; scalar_t__ rd_dly; scalar_t__ dmack; } ;
union cvmx_mio_boot_reg_cfgx {int u64; TYPE_1__ s; } ;


 int CVMX_MIO_BOOT_REG_CFGX (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static void octeon_cf_set_boot_reg_cfg(int cs)
{
 union cvmx_mio_boot_reg_cfgx reg_cfg;
 reg_cfg.u64 = cvmx_read_csr(CVMX_MIO_BOOT_REG_CFGX(cs));
 reg_cfg.s.dmack = 0;
 reg_cfg.s.tim_mult = 2;
 reg_cfg.s.rd_dly = 0;
 reg_cfg.s.sam = 0;
 reg_cfg.s.we_ext = 0;
 reg_cfg.s.oe_ext = 0;
 reg_cfg.s.en = 1;
 reg_cfg.s.orbit = 0;
 reg_cfg.s.ale = 0;
 cvmx_write_csr(CVMX_MIO_BOOT_REG_CFGX(cs), reg_cfg.u64);
}
