
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcap_transport ;
 int register_transport (int *) ;

__attribute__((used)) static int register_pcap(void)
{
 register_transport(&pcap_transport);
 return 0;
}
