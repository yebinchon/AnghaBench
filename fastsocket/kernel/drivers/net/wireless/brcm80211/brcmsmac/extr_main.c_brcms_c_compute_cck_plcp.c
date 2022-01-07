
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {int dummy; } ;


 int brcms_c_cck_plcp_set (struct brcms_c_info*,int,int ,int *) ;
 int rspec2rate (int ) ;

__attribute__((used)) static void brcms_c_compute_cck_plcp(struct brcms_c_info *wlc, u32 rspec,
     uint length, u8 *plcp)
{
 int rate = rspec2rate(rspec);

 brcms_c_cck_plcp_set(wlc, rate, length, plcp);
}
