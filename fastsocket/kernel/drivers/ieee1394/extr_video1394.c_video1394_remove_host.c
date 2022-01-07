
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {TYPE_1__* host; } ;
struct hpsb_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int IEEE1394_MAJOR ;
 int IEEE1394_MINOR_BLOCK_VIDEO1394 ;
 int MKDEV (int ,scalar_t__) ;
 int device_destroy (int ,int ) ;
 struct ti_ohci* hpsb_get_hostinfo (int *,struct hpsb_host*) ;
 int hpsb_protocol_class ;
 int video1394_highlevel ;

__attribute__((used)) static void video1394_remove_host (struct hpsb_host *host)
{
 struct ti_ohci *ohci = hpsb_get_hostinfo(&video1394_highlevel, host);

 if (ohci)
  device_destroy(hpsb_protocol_class, MKDEV(IEEE1394_MAJOR,
          IEEE1394_MINOR_BLOCK_VIDEO1394 * 16 + ohci->host->id));
 return;
}
