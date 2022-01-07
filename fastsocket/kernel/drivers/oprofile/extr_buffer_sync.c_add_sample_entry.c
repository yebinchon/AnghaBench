
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_event_entry (unsigned long) ;

__attribute__((used)) static inline void add_sample_entry(unsigned long offset, unsigned long event)
{
 add_event_entry(offset);
 add_event_entry(event);
}
