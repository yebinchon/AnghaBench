
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biquad2_state {scalar_t__ z2; scalar_t__ z1; void* b2; void* b1; void* a2; void* a1; void* gain; } ;
typedef void* int32_t ;



__attribute__((used)) static inline void biquad2_init(struct biquad2_state *bq,
    int32_t gain, int32_t a1, int32_t a2, int32_t b1, int32_t b2)
{
 bq->gain = gain;
 bq->a1 = a1;
 bq->a2 = a2;
 bq->b1 = b1;
 bq->b2 = b2;

 bq->z1 = 0;
 bq->z2 = 0;
}
