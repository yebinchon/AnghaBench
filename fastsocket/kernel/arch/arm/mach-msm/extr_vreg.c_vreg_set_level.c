
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vreg {unsigned int id; } ;


 int PCOM_VREG_SET_LEVEL ;
 int msm_proc_comm (int ,unsigned int*,unsigned int*) ;

int vreg_set_level(struct vreg *vreg, unsigned mv)
{
 unsigned id = vreg->id;
 return msm_proc_comm(PCOM_VREG_SET_LEVEL, &id, &mv);
}
