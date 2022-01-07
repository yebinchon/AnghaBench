
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_RST_OUT (int ) ;
 int tempudelay (int) ;

__attribute__((used)) static void
stop(void)
{
 tempudelay(2);
 TK_RST_OUT(0);
}
