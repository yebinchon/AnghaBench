
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRQ_STAT ;
 int HD_STATUS ;
 int dump_status (char*,int) ;
 int inb_p (int ) ;

__attribute__((used)) static inline int wait_DRQ(void)
{
 int retries;
 int stat;

 for (retries = 0; retries < 100000; retries++) {
  stat = inb_p(HD_STATUS);
  if (stat & DRQ_STAT)
   return 0;
 }
 dump_status("wait_DRQ", stat);
 return -1;
}
