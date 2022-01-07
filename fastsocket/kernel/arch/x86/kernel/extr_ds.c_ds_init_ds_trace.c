
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds_trace {size_t n; size_t size; unsigned int flags; void* ith; void* end; void* begin; void* top; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;
struct TYPE_2__ {size_t* sizeof_rec; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int DS_ALIGNMENT ;
 TYPE_1__ ds_cfg ;

__attribute__((used)) static void ds_init_ds_trace(struct ds_trace *trace, enum ds_qualifier qual,
        void *base, size_t size, size_t ith,
        unsigned int flags) {
 unsigned long buffer, adj;
 buffer = (unsigned long)base;

 adj = ALIGN(buffer, DS_ALIGNMENT) - buffer;
 buffer += adj;
 size -= adj;

 trace->n = size / ds_cfg.sizeof_rec[qual];
 trace->size = ds_cfg.sizeof_rec[qual];

 size = (trace->n * trace->size);

 trace->begin = (void *)buffer;
 trace->top = trace->begin;
 trace->end = (void *)(buffer + size);




 ith *= ds_cfg.sizeof_rec[qual];
 trace->ith = (void *)(buffer + size - ith);

 trace->flags = flags;
}
