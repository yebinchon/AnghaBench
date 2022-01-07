
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLEIO_write ;
 int HYPERVISOR_console_io (int ,int,char*) ;

__attribute__((used)) static void raw_console_write(const char *str, int len)
{
 while(len > 0) {
  int rc = HYPERVISOR_console_io(CONSOLEIO_write, len, (char *)str);
  if (rc <= 0)
   break;

  str += rc;
  len -= rc;
 }
}
