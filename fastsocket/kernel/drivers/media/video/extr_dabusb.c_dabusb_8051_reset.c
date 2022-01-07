
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdabusb_t ;


 int CPUCS_REG ;
 int dabusb_writemem (int ,int ,unsigned char*,int) ;
 int dbg (char*,unsigned char) ;

__attribute__((used)) static int dabusb_8051_reset (pdabusb_t s, unsigned char reset_bit)
{
 dbg("dabusb_8051_reset: %d",reset_bit);
 return dabusb_writemem (s, CPUCS_REG, &reset_bit, 1);
}
