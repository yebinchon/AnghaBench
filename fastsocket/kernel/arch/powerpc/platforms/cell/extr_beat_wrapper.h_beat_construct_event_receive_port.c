
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_construct_event_receive_port ;
 int beat_hcall1 (int ,int *) ;

__attribute__((used)) static inline s64 beat_construct_event_receive_port(u64 *port)
{
 u64 dummy[1];
 s64 ret;

 ret = beat_hcall1(HV_construct_event_receive_port, dummy);
 *port = dummy[0];
 return ret;
}
