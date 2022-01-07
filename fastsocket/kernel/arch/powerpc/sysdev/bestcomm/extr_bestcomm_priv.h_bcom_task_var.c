
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* tdt; } ;
struct TYPE_3__ {int var; } ;


 TYPE_2__* bcom_eng ;
 int * bcom_sram_pa2va (int ) ;

__attribute__((used)) static inline u32 *
bcom_task_var(int task)
{
 return bcom_sram_pa2va(bcom_eng->tdt[task].var);
}
