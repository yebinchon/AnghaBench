
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cpumask_t ;
struct TYPE_4__ {int user_cpus_allowed; int emulated_fp; } ;
struct TYPE_5__ {int cpus_allowed; TYPE_1__ thread; } ;


 int TIF_FPUBOUND ;
 int cpus_and (int ,int ,int ) ;
 scalar_t__ cpus_intersects (int ,int ) ;
 TYPE_2__* current ;
 scalar_t__ mt_fpemul_threshold ;
 int mt_fpu_cpumask ;
 int set_cpus_allowed (TYPE_2__*,int ) ;
 int set_thread_flag (int ) ;

__attribute__((used)) static void mt_ase_fp_affinity(void)
{
}
