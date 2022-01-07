
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSC_PUTCHAR ;
 int ssc (char,int ,int ,int ,int ) ;

__attribute__((used)) static void
cons_write (const char *buf)
{
 unsigned long ch;

 while ((ch = *buf++) != '\0') {
  ssc(ch, 0, 0, 0, SSC_PUTCHAR);
  if (ch == '\n')
    ssc('\r', 0, 0, 0, SSC_PUTCHAR);
 }
}
