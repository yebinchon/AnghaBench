
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct frhdr {int PID; int OUI; int NLPID; int pad; int IP_NLPID; int control; } ;
struct dlci_local {int dummy; } ;
typedef int hdr ;



 int FRAD_I_UI ;
 int FRAD_P_IP ;
 int FRAD_P_PADDING ;
 int FRAD_P_SNAP ;
 int htons (unsigned short) ;
 int memcpy (char*,struct frhdr*,unsigned int) ;
 int memset (int ,int ,int) ;
 struct dlci_local* netdev_priv (struct net_device*) ;
 char* skb_push (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int dlci_header(struct sk_buff *skb, struct net_device *dev,
         unsigned short type, const void *daddr,
         const void *saddr, unsigned len)
{
 struct frhdr hdr;
 struct dlci_local *dlp;
 unsigned int hlen;
 char *dest;

 dlp = netdev_priv(dev);

 hdr.control = FRAD_I_UI;
 switch(type)
 {
  case 128:
   hdr.IP_NLPID = FRAD_P_IP;
   hlen = sizeof(hdr.control) + sizeof(hdr.IP_NLPID);
   break;



  default:
   hdr.pad = FRAD_P_PADDING;
   hdr.NLPID = FRAD_P_SNAP;
   memset(hdr.OUI, 0, sizeof(hdr.OUI));
   hdr.PID = htons(type);
   hlen = sizeof(hdr);
   break;
 }

 dest = skb_push(skb, hlen);
 if (!dest)
  return(0);

 memcpy(dest, &hdr, hlen);

 return(hlen);
}
