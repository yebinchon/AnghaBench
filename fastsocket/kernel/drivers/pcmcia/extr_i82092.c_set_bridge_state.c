
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I365_GBLCTL ;
 int I365_GENCTL ;
 int I365_INTCTL ;
 int enter (char*) ;
 int indirect_setbit (int,int ,int) ;
 int indirect_write (int,int ,int) ;
 int leave (char*) ;

__attribute__((used)) static void set_bridge_state(int sock)
{
 enter("set_bridge_state");
 indirect_write(sock, I365_GBLCTL,0x00);
 indirect_write(sock, I365_GENCTL,0x00);

 indirect_setbit(sock, I365_INTCTL,0x08);
 leave("set_bridge_state");
}
