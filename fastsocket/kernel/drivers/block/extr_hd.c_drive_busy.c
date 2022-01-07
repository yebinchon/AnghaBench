
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char BUSY_STAT ;
 int HD_STATUS ;
 unsigned char READY_STAT ;
 unsigned char SEEK_STAT ;
 unsigned char STAT_OK ;
 int dump_status (char*,unsigned char) ;
 unsigned char inb_p (int ) ;

__attribute__((used)) static int drive_busy(void)
{
 unsigned int i;
 unsigned char c;

 for (i = 0; i < 500000 ; i++) {
  c = inb_p(HD_STATUS);
  if ((c & (BUSY_STAT | READY_STAT | SEEK_STAT)) == STAT_OK)
   return 0;
 }
 dump_status("reset timed out", c);
 return 1;
}
