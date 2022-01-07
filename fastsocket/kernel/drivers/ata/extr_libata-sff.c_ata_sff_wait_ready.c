
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int dummy; } ;


 int ata_sff_check_ready ;
 int ata_wait_ready (struct ata_link*,unsigned long,int ) ;

int ata_sff_wait_ready(struct ata_link *link, unsigned long deadline)
{
 return ata_wait_ready(link, deadline, ata_sff_check_ready);
}
