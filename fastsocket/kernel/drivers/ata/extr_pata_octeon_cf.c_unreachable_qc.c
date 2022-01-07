
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void unreachable_qc(struct ata_queued_cmd *qc)
{
 BUG();
}
