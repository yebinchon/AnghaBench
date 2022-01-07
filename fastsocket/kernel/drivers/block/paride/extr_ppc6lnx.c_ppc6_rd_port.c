
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Interface ;


 int ACCESS_PORT ;
 int ACCESS_READ ;
 int ppc6_rd_data_byte (int *) ;
 int ppc6_send_cmd (int *,int) ;

__attribute__((used)) static u8 ppc6_rd_port(Interface *ppc, u8 port)
{
 ppc6_send_cmd(ppc,(u8)(port | ACCESS_PORT | ACCESS_READ));

 return(ppc6_rd_data_byte(ppc));
}
