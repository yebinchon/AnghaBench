
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hso_device {int port_spec; TYPE_2__* interface; } ;
struct TYPE_8__ {TYPE_1__* net; } ;
struct TYPE_7__ {int minor; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {char* name; } ;
 int HSO_PORT_MASK ;



 TYPE_4__* dev2net (struct hso_device*) ;
 TYPE_3__* dev2ser (struct hso_device*) ;
 int dev_dbg (int *,char*,char*,char*) ;
 int sprintf (char*,char*,char*,...) ;
 char* tty_filename ;

__attribute__((used)) static void hso_log_port(struct hso_device *hso_dev)
{
 char *port_type;
 char port_dev[20];

 switch (hso_dev->port_spec & HSO_PORT_MASK) {
 case 135:
  port_type = "Control";
  break;
 case 137:
  port_type = "Application";
  break;
 case 132:
  port_type = "GPS";
  break;
 case 131:
  port_type = "GPS control";
  break;
 case 136:
  port_type = "Application2";
  break;
 case 128:
  port_type = "PCSC";
  break;
 case 134:
  port_type = "Diagnostic";
  break;
 case 133:
  port_type = "Diagnostic2";
  break;
 case 130:
  port_type = "Modem";
  break;
 case 129:
  port_type = "Network";
  break;
 default:
  port_type = "Unknown";
  break;
 }
 if ((hso_dev->port_spec & HSO_PORT_MASK) == 129) {
  sprintf(port_dev, "%s", dev2net(hso_dev)->net->name);
 } else
  sprintf(port_dev, "/dev/%s%d", tty_filename,
   dev2ser(hso_dev)->minor);

 dev_dbg(&hso_dev->interface->dev, "HSO: Found %s port %s\n",
  port_type, port_dev);
}
