
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (char*,int ,int,unsigned int,unsigned int) ;

void
prom_seek(int dhandle, unsigned int seekhi, unsigned int seeklo)
{
 p1275_cmd ("seek", P1275_INOUT(3,1), dhandle, seekhi, seeklo);
}
