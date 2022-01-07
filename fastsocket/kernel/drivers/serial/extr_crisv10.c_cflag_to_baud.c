
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CBAUD ;
 unsigned int CBAUDEX ;

__attribute__((used)) static int
cflag_to_baud(unsigned int cflag)
{
 static int baud_table[] = {
  0, 50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,
  4800, 9600, 19200, 38400 };

 static int ext_baud_table[] = {
  0, 57600, 115200, 230400, 460800, 921600, 1843200, 6250000,
                0, 0, 0, 0, 0, 0, 0, 0 };

 if (cflag & CBAUDEX)
  return ext_baud_table[(cflag & CBAUD) & ~CBAUDEX];
 else
  return baud_table[cflag & CBAUD];
}
