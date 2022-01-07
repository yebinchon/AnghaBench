
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_ohci {TYPE_1__* host; } ;
struct hpsb_host {scalar_t__ hostdata; TYPE_2__* driver; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int id; } ;


 int IEEE1394_MAJOR ;
 int IEEE1394_MINOR_BLOCK_VIDEO1394 ;
 int KERN_ERR ;
 int MKDEV (int ,int) ;
 int OHCI1394_DRIVER_NAME ;
 int PRINT (int ,int,char*) ;
 int VIDEO1394_DRIVER_NAME ;
 int device_create (int ,int *,int ,int *,char*,int ,int) ;
 int hpsb_create_hostinfo (int *,struct hpsb_host*,int ) ;
 int hpsb_protocol_class ;
 int hpsb_set_hostinfo (int *,struct hpsb_host*,struct ti_ohci*) ;
 int hpsb_set_hostinfo_key (int *,struct hpsb_host*,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int video1394_highlevel ;

__attribute__((used)) static void video1394_add_host (struct hpsb_host *host)
{
 struct ti_ohci *ohci;
 int minor;


 if (strcmp(host->driver->name, OHCI1394_DRIVER_NAME))
  return;

 ohci = (struct ti_ohci *)host->hostdata;

 if (!hpsb_create_hostinfo(&video1394_highlevel, host, 0)) {
  PRINT(KERN_ERR, ohci->host->id, "Cannot allocate hostinfo");
  return;
 }

 hpsb_set_hostinfo(&video1394_highlevel, host, ohci);
 hpsb_set_hostinfo_key(&video1394_highlevel, host, ohci->host->id);

 minor = IEEE1394_MINOR_BLOCK_VIDEO1394 * 16 + ohci->host->id;
 device_create(hpsb_protocol_class, ((void*)0), MKDEV(IEEE1394_MAJOR, minor),
        ((void*)0), "%s-%d", VIDEO1394_DRIVER_NAME, ohci->host->id);
}
