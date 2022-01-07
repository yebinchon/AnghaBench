
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int line_remove (int ,int ,int,char**) ;
 int serial_lines ;

__attribute__((used)) static int ssl_remove(int n, char **error_out)
{
 return line_remove(serial_lines, ARRAY_SIZE(serial_lines), n,
      error_out);
}
