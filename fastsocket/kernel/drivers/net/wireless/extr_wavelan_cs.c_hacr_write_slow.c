
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int hacr_write (int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void
hacr_write_slow(u_long base,
  u_char hacr)
{
  hacr_write(base, hacr);

  mdelay(1);
}
