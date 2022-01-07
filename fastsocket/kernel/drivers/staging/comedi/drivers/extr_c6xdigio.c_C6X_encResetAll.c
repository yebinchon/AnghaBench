
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int C6XDIGIO_TIME_OUT ;
 int ReadByteFromHwPort (unsigned long) ;
 int WriteByteToHwPort (unsigned long,int) ;

__attribute__((used)) static void C6X_encResetAll(unsigned long baseAddr)
{
 unsigned timeout = 0;



 WriteByteToHwPort(baseAddr, 0x68);
 while (((ReadByteFromHwPort(baseAddr + 1) & 0x80) == 0)
        && (timeout < C6XDIGIO_TIME_OUT)) {
  timeout++;
 }
 WriteByteToHwPort(baseAddr, 0x6C);
 timeout = 0;
 while (((ReadByteFromHwPort(baseAddr + 1) & 0x80) == 0x80)
        && (timeout < C6XDIGIO_TIME_OUT)) {
  timeout++;
 }
 WriteByteToHwPort(baseAddr, 0x68);
 timeout = 0;
 while (((ReadByteFromHwPort(baseAddr + 1) & 0x80) == 0x0)
        && (timeout < C6XDIGIO_TIME_OUT)) {
  timeout++;
 }
 WriteByteToHwPort(baseAddr, 0x0);
 timeout = 0;
 while (((ReadByteFromHwPort(baseAddr + 1) & 0x80) == 0x80)
        && (timeout < C6XDIGIO_TIME_OUT)) {
  timeout++;
 }
}
