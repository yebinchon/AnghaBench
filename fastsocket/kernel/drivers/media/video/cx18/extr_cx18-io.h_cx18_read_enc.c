
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18 {scalar_t__ enc_mem; } ;


 scalar_t__ cx18_readl (struct cx18*,scalar_t__) ;

__attribute__((used)) static inline u32 cx18_read_enc(struct cx18 *cx, u32 addr)
{
 return cx18_readl(cx, cx->enc_mem + addr);
}
