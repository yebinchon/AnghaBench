
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_more_immediate {void** q; } ;


 int TCODE_ISO_DATA ;
 void* cpu_to_le32 (unsigned int) ;

__attribute__((used)) static inline void fill_output_more_immediate(struct output_more_immediate *omi,
           unsigned char tag,
           unsigned char channel,
           unsigned char sync_tag,
           unsigned int payload_size)
{
 omi->q[0] = cpu_to_le32(0x02000000 | 8);
 omi->q[1] = cpu_to_le32(0);
 omi->q[2] = cpu_to_le32(0);
 omi->q[3] = cpu_to_le32(0);


 omi->q[4] = cpu_to_le32( (0x0 << 16)
      | (tag << 14)
      | (channel << 8)
      | (TCODE_ISO_DATA << 4)
      | (sync_tag) );


 omi->q[5] = cpu_to_le32((payload_size << 16) | (0x7F << 8) | 0xA0);

 omi->q[6] = cpu_to_le32(0);
 omi->q[7] = cpu_to_le32(0);
}
