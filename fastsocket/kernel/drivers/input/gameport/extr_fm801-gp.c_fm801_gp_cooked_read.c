
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {scalar_t__ io; } ;


 unsigned short inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int fm801_gp_cooked_read(struct gameport *gameport, int *axes, int *buttons)
{
 unsigned short w;

 w = inw(gameport->io + 2);
 *buttons = (~w >> 14) & 0x03;
 axes[0] = (w == 0xffff) ? -1 : ((w & 0x1fff) << 5);
 w = inw(gameport->io + 4);
 axes[1] = (w == 0xffff) ? -1 : ((w & 0x1fff) << 5);
 w = inw(gameport->io + 6);
 *buttons |= ((~w >> 14) & 0x03) << 2;
 axes[2] = (w == 0xffff) ? -1 : ((w & 0x1fff) << 5);
 w = inw(gameport->io + 8);
 axes[3] = (w == 0xffff) ? -1 : ((w & 0x1fff) << 5);
 outw(0xff, gameport->io);

        return 0;
}
