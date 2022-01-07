
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tape_request {int dummy; } ;
struct tape_device {TYPE_2__* cdev; } ;
struct TYPE_3__ {char* data; } ;
struct tape_3590_sense {TYPE_1__ fmt; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_4__ {int dev; } ;


 int EKEYREJECTED ;
 int ENOKEY ;
 int ENOTCONN ;
 int dev_err (int *,char*) ;
 char* dev_name (int *) ;
 int tape_3590_erp_basic (struct tape_device*,struct tape_request*,struct irb*,int ) ;

__attribute__((used)) static int tape_3590_crypt_error(struct tape_device *device,
     struct tape_request *request, struct irb *irb)
{
 u8 cu_rc, ekm_rc1;
 u16 ekm_rc2;
 u32 drv_rc;
 const char *bus_id;
 char *sense;

 sense = ((struct tape_3590_sense *) irb->ecw)->fmt.data;
 bus_id = dev_name(&device->cdev->dev);
 cu_rc = sense[0];
 drv_rc = *((u32*) &sense[5]) & 0xffffff;
 ekm_rc1 = sense[9];
 ekm_rc2 = *((u16*) &sense[10]);
 if ((cu_rc == 0) && (ekm_rc2 == 0xee31))

  return tape_3590_erp_basic(device, request, irb, -EKEYREJECTED);
 if ((cu_rc == 1) || (cu_rc == 2))

  return tape_3590_erp_basic(device, request, irb, -ENOTCONN);

 dev_err (&device->cdev->dev, "The tape unit failed to obtain the "
  "encryption key from EKM\n");

 return tape_3590_erp_basic(device, request, irb, -ENOKEY);
}
