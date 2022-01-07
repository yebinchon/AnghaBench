
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpsb_free_packet (void*) ;
 int hpsb_free_tlabel (void*) ;

__attribute__((used)) static void sbp2_free_packet(void *packet)
{
 hpsb_free_tlabel(packet);
 hpsb_free_packet(packet);
}
