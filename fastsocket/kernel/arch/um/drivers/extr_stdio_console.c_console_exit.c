
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int close_lines (int ,int ) ;
 int con_init_done ;
 int vts ;

__attribute__((used)) static void console_exit(void)
{
 if (!con_init_done)
  return;
 close_lines(vts, ARRAY_SIZE(vts));
}
