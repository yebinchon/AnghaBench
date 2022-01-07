
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int ,int ) ;
 int P1275_ARG_IN_STRING ;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (char*,int,char const*) ;

int prom_service_exists(const char *service_name)
{
 int err = p1275_cmd("test", P1275_ARG(0, P1275_ARG_IN_STRING) |
       P1275_INOUT(1, 1), service_name);

 if (err)
  return 0;
 return 1;
}
