
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ser0; int ser1; int ser2; int ser3; void* dav; } ;
typedef TYPE_1__ reg_ser_rw_intr_mask ;
typedef TYPE_1__ reg_intr_vect_rw_mask ;


 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int SER0_INTR_VECT ;
 int SER1_INTR_VECT ;
 int SER2_INTR_VECT ;
 int SER3_INTR_VECT ;
 int intr_vect ;
 int kgdb_handle_exception ;
 int regi_irq ;
 int regi_ser0 ;
 int regi_ser1 ;
 int regi_ser2 ;
 int regi_ser3 ;
 void* regk_ser_yes ;
 int rw_intr_mask ;
 int rw_mask ;
 int ser ;
 int set_exception_vector (int ,int ) ;

void
kgdb_init(void)
{
 reg_intr_vect_rw_mask intr_mask;
 reg_ser_rw_intr_mask ser_intr_mask;
}
