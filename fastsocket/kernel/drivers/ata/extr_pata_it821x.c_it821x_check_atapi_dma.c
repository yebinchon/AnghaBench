
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it821x_dev {scalar_t__ timing10; scalar_t__ smart; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {struct it821x_dev* private_data; } ;


 int EOPNOTSUPP ;
 int ata_qc_raw_nbytes (struct ata_queued_cmd*) ;

__attribute__((used)) static int it821x_check_atapi_dma(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct it821x_dev *itdev = ap->private_data;


 if (ata_qc_raw_nbytes(qc) < 2048)
  return -EOPNOTSUPP;


 if (itdev->smart)
  return -EOPNOTSUPP;

 if (itdev->timing10)
  return -EOPNOTSUPP;

 return 0;
}
