
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long H_BUSY ;
 unsigned long plpar_put_term_char (int ,int,char*) ;
 int vtermno ;

__attribute__((used)) static void udbg_putcLP(char c)
{
 char buf[16];
 unsigned long rc;

 if (c == '\n')
  udbg_putcLP('\r');

 buf[0] = c;
 do {
  rc = plpar_put_term_char(vtermno, 1, buf);
 } while(rc == H_BUSY);
}
