
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int name; } ;


 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void board_flyvideo(struct saa7134_dev *dev)
{
 printk("%s: there are different flyvideo cards with different tuners\n"
        "%s: out there, you might have to use the tuner=<nr> insmod\n"
        "%s: option to override the default value.\n",
        dev->name, dev->name, dev->name);
}
