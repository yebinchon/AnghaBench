
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int ) ;
 int p1275_cmd (char*,int ,int) ;

int
prom_devclose(int dhandle)
{
 p1275_cmd ("close", P1275_INOUT(1,0), dhandle);
 return 0;
}
