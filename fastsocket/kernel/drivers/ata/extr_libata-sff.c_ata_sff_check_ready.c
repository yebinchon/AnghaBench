
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_check_status ) (TYPE_2__*) ;} ;


 int ata_check_ready (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int ata_sff_check_ready(struct ata_link *link)
{
 u8 status = link->ap->ops->sff_check_status(link->ap);

 return ata_check_ready(status);
}
