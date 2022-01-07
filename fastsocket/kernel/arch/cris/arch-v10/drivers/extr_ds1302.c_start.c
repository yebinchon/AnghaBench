
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_RST_OUT (int) ;
 int TK_SCL_OUT (int ) ;
 int tempudelay (int) ;

__attribute__((used)) static void
start(void)
{
 TK_SCL_OUT(0);
 tempudelay(1);
 TK_RST_OUT(0);
 tempudelay(5);
 TK_RST_OUT(1);
}
