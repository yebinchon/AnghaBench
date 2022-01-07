
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int dummy; } ;


 int FLTRCR (struct sh_flctl*) ;
 int TRSTRT ;
 int writeb (int ,int ) ;

__attribute__((used)) static void start_translation(struct sh_flctl *flctl)
{
 writeb(TRSTRT, FLTRCR(flctl));
}
