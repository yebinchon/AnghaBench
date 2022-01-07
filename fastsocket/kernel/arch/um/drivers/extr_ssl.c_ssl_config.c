
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int line_config (int ,int ,char*,int *,char**) ;
 int opts ;
 int serial_lines ;

__attribute__((used)) static int ssl_config(char *str, char **error_out)
{
 return line_config(serial_lines, ARRAY_SIZE(serial_lines), str, &opts,
      error_out);
}
