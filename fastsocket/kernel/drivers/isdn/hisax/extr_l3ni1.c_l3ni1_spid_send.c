
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int dummy; } ;


 int l3ni1_SendSpid (struct l3_process*,int ,void*,int) ;

__attribute__((used)) static void l3ni1_spid_send( struct l3_process *pc, u_char pr, void *arg )
{
 l3ni1_SendSpid( pc, pr, arg, 20 );
}
