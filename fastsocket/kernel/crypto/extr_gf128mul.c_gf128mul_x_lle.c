
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {void* a; void* b; } ;
typedef TYPE_1__ be128 ;


 int be64_to_cpu (void*) ;
 void* cpu_to_be64 (int) ;
 int* gf128mul_table_lle ;

__attribute__((used)) static void gf128mul_x_lle(be128 *r, const be128 *x)
{
 u64 a = be64_to_cpu(x->a);
 u64 b = be64_to_cpu(x->b);
 u64 _tt = gf128mul_table_lle[(b << 7) & 0xff];

 r->b = cpu_to_be64((b >> 1) | (a << 63));
 r->a = cpu_to_be64((a >> 1) ^ (_tt << 48));
}
