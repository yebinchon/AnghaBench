
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int stopped; } ;


 int reg_w (struct sd*,int,int) ;

__attribute__((used)) static void w9968cf_configure(struct sd *sd)
{
 reg_w(sd, 0x00, 0xff00);
 reg_w(sd, 0x00, 0xbf17);
 reg_w(sd, 0x00, 0xbf10);
 reg_w(sd, 0x01, 0x0010);
 reg_w(sd, 0x01, 0x0000);
 reg_w(sd, 0x01, 0x0010);
 reg_w(sd, 0x01, 0x0030);

 sd->stopped = 1;
}
