
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int friq_read_block_int (int *,char*,int,int) ;

__attribute__((used)) static void friq_read_block( PIA *pi, char * buf, int count)

{ friq_read_block_int(pi,buf,count,0x08);
}
