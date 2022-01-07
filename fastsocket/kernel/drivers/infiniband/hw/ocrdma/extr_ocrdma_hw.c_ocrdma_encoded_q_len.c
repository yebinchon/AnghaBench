
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int fls (int) ;

__attribute__((used)) static u32 ocrdma_encoded_q_len(int q_len)
{
 u32 len_encoded = fls(q_len);

 if (len_encoded == 16)
  len_encoded = 0;
 return len_encoded;
}
