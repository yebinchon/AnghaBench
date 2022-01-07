
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCC_TXRDY ;
 int in_8 (scalar_t__) ;
 int out_8 (int ,char) ;
 scalar_t__ sccc ;
 int sccd ;

__attribute__((used)) static void udbg_scc_putc(char c)
{
 if (sccc) {
  while ((in_8(sccc) & SCC_TXRDY) == 0)
   ;
  out_8(sccd, c);
  if (c == '\n')
   udbg_scc_putc('\r');
 }
}
