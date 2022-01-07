
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct carm_msg_sync_time {void* timestamp; void* handle; int subtype; int type; } ;
struct carm_host {int dummy; } ;


 int CARM_MSG_MISC ;
 int MISC_SET_TIME ;
 int TAG_ENCODE (unsigned int) ;
 void* cpu_to_le32 (int ) ;
 int do_gettimeofday (struct timeval*) ;
 int memset (struct carm_msg_sync_time*,int ,int) ;

__attribute__((used)) static unsigned int carm_fill_sync_time(struct carm_host *host,
     unsigned int idx, void *mem)
{
 struct timeval tv;
 struct carm_msg_sync_time *st = mem;

 do_gettimeofday(&tv);

 memset(st, 0, sizeof(*st));
 st->type = CARM_MSG_MISC;
 st->subtype = MISC_SET_TIME;
 st->handle = cpu_to_le32(TAG_ENCODE(idx));
 st->timestamp = cpu_to_le32(tv.tv_sec);

 return sizeof(struct carm_msg_sync_time);
}
