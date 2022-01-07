
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxa_port {int tableAddr; } ;


 int FC_SetXoffState ;
 int Magic_code ;
 int moxafunc (int ,int ,int ) ;

__attribute__((used)) static void MoxaPortTxDisable(struct moxa_port *port)
{
 moxafunc(port->tableAddr, FC_SetXoffState, Magic_code);
}
