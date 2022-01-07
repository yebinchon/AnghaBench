
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct rq_enet_desc {int length_type; int address; } ;


 int RQ_ENET_LEN_BITS ;
 int RQ_ENET_LEN_MASK ;
 int RQ_ENET_TYPE_MASK ;
 int cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static inline void rq_enet_desc_enc(struct rq_enet_desc *desc,
 u64 address, u8 type, u16 length)
{
 desc->address = cpu_to_le64(address);
 desc->length_type = cpu_to_le16((length & RQ_ENET_LEN_MASK) |
  ((type & RQ_ENET_TYPE_MASK) << RQ_ENET_LEN_BITS));
}
