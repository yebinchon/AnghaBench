
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_rx_buffer {int page; } ;


 unsigned char* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
      unsigned int frame_size)
{
 unsigned char *data;
 bool match = 1;

 frame_size >>= 1;

 data = kmap(rx_buffer->page);

 if (data[3] != 0xFF ||
     data[frame_size + 10] != 0xBE ||
     data[frame_size + 12] != 0xAF)
  match = 0;

 kunmap(rx_buffer->page);

 return match;
}
