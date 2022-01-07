
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VID; int VIDC; scalar_t__ FIDC; int SGTC; } ;
union msr_fidvidctl {int val; TYPE_1__ bits; } ;


 int MSR_K7_FID_VID_CTL ;
 int latency ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void change_VID(int vid)
{
 union msr_fidvidctl fidvidctl;

 rdmsrl(MSR_K7_FID_VID_CTL, fidvidctl.val);
 if (fidvidctl.bits.VID != vid) {
  fidvidctl.bits.SGTC = latency;
  fidvidctl.bits.VID = vid;
  fidvidctl.bits.FIDC = 0;
  fidvidctl.bits.VIDC = 1;
  wrmsrl(MSR_K7_FID_VID_CTL, fidvidctl.val);
 }
}
