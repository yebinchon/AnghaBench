
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_base; } ;


 int MAX_SOCKETS ;
 int enter (char*) ;
 unsigned int indirect_read (int,int) ;
 int leave (char*) ;
 TYPE_1__* sockets ;

__attribute__((used)) static int card_present(int socketno)
{
 unsigned int val;
 enter("card_present");

 if ((socketno<0) || (socketno >= MAX_SOCKETS))
  return 0;
 if (sockets[socketno].io_base == 0)
  return 0;


 val = indirect_read(socketno, 1);
 if ((val&12)==12) {
  leave("card_present 1");
  return 1;
 }

 leave("card_present 0");
 return 0;
}
