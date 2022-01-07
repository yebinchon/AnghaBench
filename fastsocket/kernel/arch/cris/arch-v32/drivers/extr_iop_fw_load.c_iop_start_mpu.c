
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int en; } ;
typedef TYPE_1__ reg_iop_mpu_rw_ctrl ;


 int MPU_BA_I (unsigned int) ;
 TYPE_1__ MPU_DI () ;
 TYPE_1__ MPU_HALT () ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int REG_WR_INT (int ,int ,int ,int ) ;
 int iop_mpu ;
 int regi_iop_mpu ;
 int regk_iop_mpu_yes ;
 int rw_ctrl ;
 int rw_instr ;
 int wait_mpu_idle () ;

int iop_start_mpu(unsigned int start_addr)
{
 reg_iop_mpu_rw_ctrl mpu_ctrl = { .en = regk_iop_mpu_yes };
 int retval;


 if ((retval = wait_mpu_idle()) != 0)
  goto out;
 REG_WR(iop_mpu, regi_iop_mpu, rw_instr, MPU_HALT());
 if ((retval = wait_mpu_idle()) != 0)
  goto out;

 if ((retval = wait_mpu_idle()) != 0)
  goto out;
 REG_WR_INT(iop_mpu, regi_iop_mpu, rw_instr, MPU_BA_I(start_addr));
 if ((retval = wait_mpu_idle()) != 0)
  goto out;

 REG_WR(iop_mpu, regi_iop_mpu, rw_instr, MPU_DI());
 if ((retval = wait_mpu_idle()) != 0)
  goto out;

 REG_WR(iop_mpu, regi_iop_mpu, rw_ctrl, mpu_ctrl);
 out:
 return retval;
}
