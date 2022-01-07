
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int dummy; } ;
struct hpsb_host {int dummy; } ;



__attribute__((used)) static int dummy_transmit_packet(struct hpsb_host *h, struct hpsb_packet *p)
{
 return 0;
}
