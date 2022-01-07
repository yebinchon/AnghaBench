
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_ALTSTATUS_REG ;
 int ctrl_inb (int ) ;

__attribute__((used)) static bool gdrom_data_request(void)
{
 return (ctrl_inb(GDROM_ALTSTATUS_REG) & 0x88) == 8;
}
