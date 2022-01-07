
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BRIQ_PANEL_VFD_IOPORT ;
 int outb (int,scalar_t__) ;
 int* vfd ;

__attribute__((used)) static void update_vfd(void)
{
 int i;


 outb(0x02, BRIQ_PANEL_VFD_IOPORT);
 for (i=0; i<20; i++)
  outb(vfd[i], BRIQ_PANEL_VFD_IOPORT + 1);


 outb(0xc0, BRIQ_PANEL_VFD_IOPORT);
 for (i=20; i<40; i++)
  outb(vfd[i], BRIQ_PANEL_VFD_IOPORT + 1);

}
