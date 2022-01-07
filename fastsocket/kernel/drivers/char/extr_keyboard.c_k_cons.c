
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int set_console (unsigned char) ;

__attribute__((used)) static void k_cons(struct vc_data *vc, unsigned char value, char up_flag)
{
 if (up_flag)
  return;
 set_console(value);
}
