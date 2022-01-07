
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct rq_enet_desc {int length_type; int address; } ;


 int RQ_ENET_LEN_BITS ;
 int RQ_ENET_LEN_MASK ;
 int RQ_ENET_TYPE_MASK ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline void rq_enet_desc_dec(struct rq_enet_desc *desc,
 u64 *address, u8 *type, u16 *length)
{
 *address = le64_to_cpu(desc->address);
 *length = le16_to_cpu(desc->length_type) & RQ_ENET_LEN_MASK;
 *type = (u8)((le16_to_cpu(desc->length_type) >> RQ_ENET_LEN_BITS) &
  RQ_ENET_TYPE_MASK);
}
