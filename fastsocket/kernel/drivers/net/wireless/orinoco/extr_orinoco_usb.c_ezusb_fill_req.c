
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ezusb_packet {int data; void* hermes_rid; void* hermes_len; void* crc; void* size; void* frame_type; scalar_t__ ans_reply_count; int req_reply_count; void* magic; } ;


 int BUG_ON (int) ;
 int BULK_BUF_SIZE ;
 int EZUSB_MAGIC ;
 int HERMES_BYTES_TO_RECLEN (int) ;
 int build_crc (struct ezusb_packet*) ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static int ezusb_fill_req(struct ezusb_packet *req, u16 length, u16 rid,
     const void *data, u16 frame_type, u8 reply_count)
{
 int total_size = sizeof(*req) + length;

 BUG_ON(total_size > BULK_BUF_SIZE);

 req->magic = cpu_to_le16(EZUSB_MAGIC);
 req->req_reply_count = reply_count;
 req->ans_reply_count = 0;
 req->frame_type = cpu_to_le16(frame_type);
 req->size = cpu_to_le16(length + 4);
 req->crc = cpu_to_le16(build_crc(req));
 req->hermes_len = cpu_to_le16(HERMES_BYTES_TO_RECLEN(length));
 req->hermes_rid = cpu_to_le16(rid);
 if (data)
  memcpy(req->data, data, length);
 return total_size;
}
