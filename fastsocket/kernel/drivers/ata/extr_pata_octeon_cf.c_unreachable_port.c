
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {int dummy; } ;


 int BUG () ;

__attribute__((used)) static u8 unreachable_port(struct ata_port *ap)
{
 BUG();
}
