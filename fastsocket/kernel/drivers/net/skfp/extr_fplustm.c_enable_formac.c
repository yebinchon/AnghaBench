
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_IMSK1L ;
 int FM_IMSK1U ;
 int FM_IMSK2L ;
 int FM_IMSK2U ;
 int FM_IMSK3L ;
 int FM_IMSK3U ;
 scalar_t__ mac_imsk1l ;
 scalar_t__ mac_imsk1u ;
 scalar_t__ mac_imsk2l ;
 scalar_t__ mac_imsk2u ;
 scalar_t__ mac_imsk3l ;
 scalar_t__ mac_imsk3u ;
 int outpw (int ,unsigned short) ;

__attribute__((used)) static void enable_formac(struct s_smc *smc)
{

 outpw(FM_A(FM_IMSK1U),(unsigned short)~mac_imsk1u);
 outpw(FM_A(FM_IMSK1L),(unsigned short)~mac_imsk1l);
 outpw(FM_A(FM_IMSK2U),(unsigned short)~mac_imsk2u);
 outpw(FM_A(FM_IMSK2L),(unsigned short)~mac_imsk2l);
 outpw(FM_A(FM_IMSK3U),(unsigned short)~mac_imsk3u);
 outpw(FM_A(FM_IMSK3L),(unsigned short)~mac_imsk3l);
}
