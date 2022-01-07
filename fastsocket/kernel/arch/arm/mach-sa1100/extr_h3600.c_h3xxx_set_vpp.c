
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPAQ_EGPIO_VPP_ON ;
 int assign_h3600_egpio (int ,int) ;

__attribute__((used)) static void h3xxx_set_vpp(int vpp)
{
 assign_h3600_egpio(IPAQ_EGPIO_VPP_ON, vpp);
}
