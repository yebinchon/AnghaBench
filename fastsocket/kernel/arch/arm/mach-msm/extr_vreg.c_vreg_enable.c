
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vreg {unsigned int id; } ;


 int PCOM_VREG_SWITCH ;
 int msm_proc_comm (int ,unsigned int*,unsigned int*) ;

int vreg_enable(struct vreg *vreg)
{
 unsigned id = vreg->id;
 unsigned enable = 1;
 return msm_proc_comm(PCOM_VREG_SWITCH, &id, &enable);
}
