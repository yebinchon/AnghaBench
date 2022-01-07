
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int le32_to_cpu (int) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static inline void ocrdma_copy_le32_to_cpu(void *dst, void *src, u32 len)
{







 memcpy(dst, src, len);

}
