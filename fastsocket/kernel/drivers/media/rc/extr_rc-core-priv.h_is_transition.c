
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {scalar_t__ pulse; } ;



__attribute__((used)) static inline bool is_transition(struct ir_raw_event *x, struct ir_raw_event *y)
{
 return x->pulse != y->pulse;
}
