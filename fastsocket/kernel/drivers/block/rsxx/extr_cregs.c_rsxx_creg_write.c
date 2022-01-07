
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsxx_cardinfo {int dummy; } ;


 int issue_creg_rw (struct rsxx_cardinfo*,int ,unsigned int,void*,int,int ) ;

int rsxx_creg_write(struct rsxx_cardinfo *card,
   u32 addr,
   unsigned int size8,
   void *data,
   int byte_stream)
{
 return issue_creg_rw(card, addr, size8, data, byte_stream, 0);
}
