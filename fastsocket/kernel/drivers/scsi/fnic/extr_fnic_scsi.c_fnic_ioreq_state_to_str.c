
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** fnic_ioreq_state_str ;

__attribute__((used)) static const char *fnic_ioreq_state_to_str(unsigned int state)
{
 if (state >= ARRAY_SIZE(fnic_ioreq_state_str) ||
     !fnic_ioreq_state_str[state])
  return "unknown";

 return fnic_ioreq_state_str[state];
}
