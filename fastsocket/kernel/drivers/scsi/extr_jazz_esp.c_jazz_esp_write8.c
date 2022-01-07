
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {scalar_t__ regs; } ;



__attribute__((used)) static void jazz_esp_write8(struct esp *esp, u8 val, unsigned long reg)
{
 *(volatile u8 *)(esp->regs + reg) = val;
}
