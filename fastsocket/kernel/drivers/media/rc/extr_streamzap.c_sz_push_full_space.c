
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct streamzap_ir {int sum; } ;
struct TYPE_4__ {int pulse; int duration; } ;


 int DEFINE_IR_RAW_EVENT (TYPE_1__) ;
 int SZ_RESOLUTION ;
 int US_TO_NS (int) ;
 TYPE_1__ rawir ;
 int sz_push (struct streamzap_ir*,TYPE_1__) ;

__attribute__((used)) static void sz_push_full_space(struct streamzap_ir *sz,
          unsigned char value)
{
 DEFINE_IR_RAW_EVENT(rawir);

 rawir.pulse = 0;
 rawir.duration = ((int) value) * SZ_RESOLUTION;
 rawir.duration += SZ_RESOLUTION / 2;
 sz->sum += rawir.duration;
 rawir.duration = US_TO_NS(rawir.duration);
 sz_push(sz, rawir);
}
