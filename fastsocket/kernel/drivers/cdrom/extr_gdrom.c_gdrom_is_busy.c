
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_ALTSTATUS_REG ;
 int ctrl_inb (int ) ;

__attribute__((used)) static bool gdrom_is_busy(void)
{
 return (ctrl_inb(GDROM_ALTSTATUS_REG) & 0x80) != 0;
}
