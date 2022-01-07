
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct BCState {TYPE_1__* cs; } ;
struct TYPE_4__ {int (* BC_Read_Reg ) (TYPE_1__*,int ,int) ;} ;


 int HFC_CIP ;
 int HFC_DATA ;
 int HFC_Z_HIGH ;
 int HFC_Z_LOW ;
 int WaitNoBusy (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int) ;
 int stub2 (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
ReadZReg(struct BCState *bcs, u_char reg)
{
 int val;

 WaitNoBusy(bcs->cs);
 val = 256 * bcs->cs->BC_Read_Reg(bcs->cs, HFC_DATA, reg | HFC_CIP | HFC_Z_HIGH);
 WaitNoBusy(bcs->cs);
 val += bcs->cs->BC_Read_Reg(bcs->cs, HFC_DATA, reg | HFC_CIP | HFC_Z_LOW);
 return (val);
}
