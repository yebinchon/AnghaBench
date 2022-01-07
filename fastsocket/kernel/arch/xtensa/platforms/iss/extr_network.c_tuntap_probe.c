
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * gate_addr; } ;
struct TYPE_5__ {int fixed_config; int fd; int dev_name; } ;
struct TYPE_6__ {TYPE_1__ tuntap; } ;
struct TYPE_7__ {int poll; int protocol; int write; int read; int close; int open; TYPE_2__ info; } ;
struct iss_net_private {int have_mac; TYPE_4__ host; TYPE_3__ tp; int mtu; int mac; } ;


 int TRANSPORT_TUNTAP_MTU ;
 int TRANSPORT_TUNTAP_NAME ;
 int printk (char*,...) ;
 scalar_t__ setup_etheraddr (char*,int ) ;
 char* split_if_spec (char*,char**,char**) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int const) ;
 int strncpy (int ,char*,int) ;
 int tuntap_close ;
 int tuntap_open ;
 int tuntap_poll ;
 int tuntap_protocol ;
 int tuntap_read ;
 int tuntap_write ;

__attribute__((used)) static int tuntap_probe(struct iss_net_private *lp, int index, char *init)
{
 const int len = strlen(TRANSPORT_TUNTAP_NAME);
 char *dev_name = ((void*)0), *mac_str = ((void*)0), *rem = ((void*)0);



 if (strncmp(init, TRANSPORT_TUNTAP_NAME, len))
  return 0;

 if (*(init += strlen(TRANSPORT_TUNTAP_NAME)) == ',') {
  if ((rem=split_if_spec(init+1, &mac_str, &dev_name)) != ((void*)0)) {
   printk("Extra garbage on specification : '%s'\n", rem);
   return 0;
  }
 } else if (*init != '\0') {
  printk("Invalid argument: %s. Skipping device!\n", init);
  return 0;
 }

 if (dev_name) {
  strncpy(lp->tp.info.tuntap.dev_name, dev_name,
    sizeof lp->tp.info.tuntap.dev_name);
  lp->tp.info.tuntap.fixed_config = 1;
 } else
  strcpy(lp->tp.info.tuntap.dev_name, TRANSPORT_TUNTAP_NAME);






 lp->mtu = TRANSPORT_TUNTAP_MTU;



 lp->tp.info.tuntap.fd = -1;

 lp->tp.open = tuntap_open;
 lp->tp.close = tuntap_close;
 lp->tp.read = tuntap_read;
 lp->tp.write = tuntap_write;
 lp->tp.protocol = tuntap_protocol;
 lp->tp.poll = tuntap_poll;

 printk("TUN/TAP backend - ");




 printk("\n");

 return 1;
}
