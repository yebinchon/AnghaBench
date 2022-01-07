
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int line_config (int ,int ,char*,int *,char**) ;
 int opts ;
 int vts ;

__attribute__((used)) static int con_config(char *str, char **error_out)
{
 return line_config(vts, ARRAY_SIZE(vts), str, &opts, error_out);
}
