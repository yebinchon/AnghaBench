
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad {int dummy; } ;



__attribute__((used)) static int get_pad_size(int hdr_len, int data_len)
{
 int seg_size, pad;

 seg_size = sizeof(struct ib_mad) - hdr_len;
 if (data_len && seg_size) {
  pad = seg_size - data_len % seg_size;
  return pad == seg_size ? 0 : pad;
 } else
  return seg_size;
}
