
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct p4_event_bind {int dummy; } ;


 unsigned int ARRAY_SIZE (struct p4_event_bind*) ;
 unsigned int p4_config_unpack_event (int ) ;
 struct p4_event_bind* p4_event_bind_map ;

__attribute__((used)) static struct p4_event_bind *p4_config_get_bind(u64 config)
{
 unsigned int evnt = p4_config_unpack_event(config);
 struct p4_event_bind *bind = ((void*)0);

 if (evnt < ARRAY_SIZE(p4_event_bind_map))
  bind = &p4_event_bind_map[evnt];

 return bind;
}
