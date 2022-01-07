
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct apei_exec_context {int value; } ;



__attribute__((used)) static inline void apei_exec_ctx_set_input(struct apei_exec_context *ctx,
        u64 input)
{
 ctx->value = input;
}
