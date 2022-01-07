
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Port {int dummy; } ;


 int RIOC_CONFIG ;
 int RIOParam (struct Port*,int ,int,int) ;

__attribute__((used)) static int rio_set_real_termios(void *ptr)
{
 return RIOParam((struct Port *) ptr, RIOC_CONFIG, 1, 1);
}
