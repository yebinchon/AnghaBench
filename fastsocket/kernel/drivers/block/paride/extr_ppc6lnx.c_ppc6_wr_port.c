
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Interface ;


 int ACCESS_PORT ;
 int ACCESS_WRITE ;
 int ppc6_send_cmd (int *,int) ;
 int ppc6_wr_data_byte (int *,int) ;

__attribute__((used)) static void ppc6_wr_port(Interface *ppc, u8 port, u8 data)
{
 ppc6_send_cmd(ppc,(u8)(port | ACCESS_PORT | ACCESS_WRITE));

 ppc6_wr_data_byte(ppc, data);
}
