
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxa_port {int tableAddr; } ;


 int FC_SetXonState ;
 int Magic_code ;
 int moxafunc (int ,int ,int ) ;

__attribute__((used)) static void MoxaPortTxEnable(struct moxa_port *port)
{
 moxafunc(port->tableAddr, FC_SetXonState, Magic_code);
}
