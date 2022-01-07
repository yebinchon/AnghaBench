
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha_pad {int sha_pad2; int sha_pad1; } ;


 int memset (int ,int,int) ;

__attribute__((used)) static inline void sha_pad_init(struct sha_pad *shapad)
{
 memset(shapad->sha_pad1, 0x00, sizeof(shapad->sha_pad1));
 memset(shapad->sha_pad2, 0xF2, sizeof(shapad->sha_pad2));
}
