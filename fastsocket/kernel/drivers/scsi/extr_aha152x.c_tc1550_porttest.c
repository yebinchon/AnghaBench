
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GETPORT (scalar_t__) ;
 scalar_t__ O_STACK ;
 scalar_t__ O_TC_DMACNTRL1 ;
 scalar_t__ O_TC_STACK ;
 int SETPORT (scalar_t__,int) ;

__attribute__((used)) static int tc1550_porttest(int io_port)
{
 int i;

 SETPORT(io_port + O_TC_DMACNTRL1, 0);
 for (i = 0; i < 16; i++)
  SETPORT(io_port + O_STACK, i);

 SETPORT(io_port + O_TC_DMACNTRL1, 0);
 for (i = 0; i < 16 && GETPORT(io_port + O_TC_STACK) == i; i++)
  ;

 return (i == 16);
}
