
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int caplen; } ;
struct pcap_handler_data {int len; int buffer; } ;


 int memcpy (int ,int const*,int) ;

__attribute__((used)) static void handler(u_char *data, const struct pcap_pkthdr *header,
      const u_char *packet)
{
 int len;

 struct pcap_handler_data *hdata = (struct pcap_handler_data *) data;

 len = hdata->len < header->caplen ? hdata->len : header->caplen;
 memcpy(hdata->buffer, packet, len);
 hdata->len = len;
}
