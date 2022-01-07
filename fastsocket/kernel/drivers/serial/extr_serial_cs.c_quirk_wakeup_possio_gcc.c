
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {unsigned int c950ctrl; } ;
struct pcmcia_device {struct serial_info* priv; } ;


 int msleep (int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static void quirk_wakeup_possio_gcc(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 unsigned int ctrl = info->c950ctrl;

 outb(0xA, ctrl + 1);
 msleep(100);
 outb(0xE, ctrl + 1);
 msleep(300);
 outb(0xC, ctrl + 1);
 msleep(100);
 outb(0xE, ctrl + 1);
 msleep(200);
 outb(0xF, ctrl + 1);
 msleep(100);
 outb(0xE, ctrl + 1);
 msleep(100);
 outb(0xC, ctrl + 1);
}
