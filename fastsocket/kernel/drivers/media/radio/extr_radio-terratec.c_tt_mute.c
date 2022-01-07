
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terratec {int muted; } ;


 int tt_write_vol (struct terratec*,int ) ;

__attribute__((used)) static void tt_mute(struct terratec *tt)
{
 tt->muted = 1;
 tt_write_vol(tt, 0);
}
