
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int q40ide_default_irq(unsigned long base)
{
           switch (base) {
             case 0x1f0: return 14;
      case 0x170: return 15;
      case 0x1e8: return 11;
      default:
   return 0;
    }
}
