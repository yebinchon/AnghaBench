
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_destruct_event_receive_port ;
 int beat_hcall_norets (int ,int ) ;

__attribute__((used)) static inline s64 beat_destruct_event_receive_port(u64 port)
{
 s64 ret;

 ret = beat_hcall_norets(HV_destruct_event_receive_port, port);
 return ret;
}
