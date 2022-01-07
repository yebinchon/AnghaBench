
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPSB_ERR (char*,size_t,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static size_t packet_size_to_data_size(size_t packet_size, size_t header_size,
           size_t buffer_size, int tcode)
{
 size_t ret = packet_size <= header_size ? 0 : packet_size - header_size;

 if (unlikely(ret > buffer_size))
  ret = buffer_size;

 if (unlikely(ret + header_size != packet_size))
  HPSB_ERR("unexpected packet size %zd (tcode %d), bug?",
    packet_size, tcode);
 return ret;
}
