
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devno; } ;
struct dasd_diag_init_io {int dev_nr; } ;
struct dasd_diag_private {TYPE_1__ dev_id; struct dasd_diag_init_io iib; } ;
struct dasd_device {scalar_t__ private; } ;


 int TERM_BIO ;
 int dia250 (struct dasd_diag_init_io*,int ) ;
 int memset (struct dasd_diag_init_io*,int ,int) ;

__attribute__((used)) static inline int
mdsk_term_io(struct dasd_device * device)
{
 struct dasd_diag_private *private;
 struct dasd_diag_init_io *iib;
 int rc;

 private = (struct dasd_diag_private *) device->private;
 iib = &private->iib;
 memset(iib, 0, sizeof (struct dasd_diag_init_io));
 iib->dev_nr = private->dev_id.devno;
 rc = dia250(iib, TERM_BIO);
 return rc;
}
