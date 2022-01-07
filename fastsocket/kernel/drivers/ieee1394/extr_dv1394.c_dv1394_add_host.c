
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int dummy; } ;
struct hpsb_host {int id; scalar_t__ hostdata; TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 int DV1394_NTSC ;
 int DV1394_PAL ;
 int IEEE1394_MAJOR ;
 int IEEE1394_MINOR_BLOCK_DV1394 ;
 int MKDEV (int ,int) ;
 int MODE_RECEIVE ;
 int MODE_TRANSMIT ;
 int OHCI1394_DRIVER_NAME ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int dv1394_init (struct ti_ohci*,int ,int ) ;
 int hpsb_protocol_class ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void dv1394_add_host(struct hpsb_host *host)
{
 struct ti_ohci *ohci;
 int id = host->id;


 if (strcmp(host->driver->name, OHCI1394_DRIVER_NAME))
  return;

 ohci = (struct ti_ohci *)host->hostdata;

 device_create(hpsb_protocol_class, ((void*)0),
        MKDEV(IEEE1394_MAJOR,
       IEEE1394_MINOR_BLOCK_DV1394 * 16 + (id<<2)),
        ((void*)0), "dv1394-%d", id);

 dv1394_init(ohci, DV1394_NTSC, MODE_RECEIVE);
 dv1394_init(ohci, DV1394_NTSC, MODE_TRANSMIT);
 dv1394_init(ohci, DV1394_PAL, MODE_RECEIVE);
 dv1394_init(ohci, DV1394_PAL, MODE_TRANSMIT);
}
