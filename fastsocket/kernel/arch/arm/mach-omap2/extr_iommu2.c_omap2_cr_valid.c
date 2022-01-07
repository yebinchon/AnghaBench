
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cr_regs {int cam; } ;


 int MMU_CAM_V ;

__attribute__((used)) static inline int omap2_cr_valid(struct cr_regs *cr)
{
 return cr->cam & MMU_CAM_V;
}
