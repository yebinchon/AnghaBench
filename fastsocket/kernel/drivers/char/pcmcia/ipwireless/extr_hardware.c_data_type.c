
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_packet_header {int packet_rank; int protocol; } ;


 int NL_FIRST_PACKET ;




__attribute__((used)) static char *data_type(const unsigned char *buf, unsigned length)
{
 struct nl_packet_header *hdr = (struct nl_packet_header *) buf;

 if (length == 0)
  return "     ";

 if (hdr->packet_rank & NL_FIRST_PACKET) {
  switch (hdr->protocol) {
  case 129: return "DATA ";
  case 130: return "CTRL ";
  case 128: return "SETUP";
  default: return "???? ";
  }
 } else
  return "     ";
}
