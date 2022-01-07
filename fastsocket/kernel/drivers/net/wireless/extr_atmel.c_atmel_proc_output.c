
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int major_version; int minor_version; int build_version; } ;
struct atmel_private {int station_state; int card_type; char* firmware_id; scalar_t__ reg_domain; scalar_t__ use_wpa; scalar_t__ do_rx_crc; scalar_t__ firmware; TYPE_1__ host_info; } ;
struct TYPE_5__ {scalar_t__ reg_domain; char* name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;



 int DRIVER_MAJOR ;
 int DRIVER_MINOR ;
 TYPE_2__* channel_table ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int atmel_proc_output (char *buf, struct atmel_private *priv)
{
 int i;
 char *p = buf;
 char *s, *r, *c;

 p += sprintf(p, "Driver version:\t\t%d.%d\n",
       DRIVER_MAJOR, DRIVER_MINOR);

 if (priv->station_state != 133) {
  p += sprintf(p, "Firmware version:\t%d.%d build %d\n"
    "Firmware location:\t",
        priv->host_info.major_version,
        priv->host_info.minor_version,
        priv->host_info.build_version);

  if (priv->card_type != 138)
   p += sprintf(p, "on card\n");
  else if (priv->firmware)
   p += sprintf(p, "%s loaded by host\n",
         priv->firmware_id);
  else
   p += sprintf(p, "%s loaded by hotplug\n",
         priv->firmware_id);

  switch (priv->card_type) {
  case 137:
   c = "Parallel flash";
   break;
  case 136:
   c = "SPI flash\n";
   break;
  case 138:
   c = "EEPROM";
   break;
  default:
   c = "<unknown>";
  }

  r = "<unknown>";
  for (i = 0; i < ARRAY_SIZE(channel_table); i++)
   if (priv->reg_domain == channel_table[i].reg_domain)
    r = channel_table[i].name;

  p += sprintf(p, "MAC memory type:\t%s\n", c);
  p += sprintf(p, "Regulatory domain:\t%s\n", r);
  p += sprintf(p, "Host CRC checking:\t%s\n",
        priv->do_rx_crc ? "On" : "Off");
  p += sprintf(p, "WPA-capable firmware:\t%s\n",
        priv->use_wpa ? "Yes" : "No");
 }

 switch (priv->station_state) {
 case 128:
  s = "Scanning";
  break;
 case 132:
  s = "Joining";
  break;
 case 134:
  s = "Authenticating";
  break;
 case 135:
  s = "Associating";
  break;
 case 130:
  s = "Ready";
  break;
 case 129:
  s = "Reassociating";
  break;
 case 131:
  s = "Management error";
  break;
 case 133:
  s = "Down";
  break;
 default:
  s = "<unknown>";
 }

 p += sprintf(p, "Current state:\t\t%s\n", s);
 return p - buf;
}
