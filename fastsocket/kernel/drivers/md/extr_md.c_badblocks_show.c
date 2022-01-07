
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {scalar_t__ shift; int count; int lock; scalar_t__ unacked_exist; int * page; } ;
typedef size_t ssize_t ;
typedef scalar_t__ sector_t ;


 int BB_ACK (int ) ;
 unsigned int BB_LEN (int ) ;
 scalar_t__ BB_OFFSET (int ) ;
 size_t PAGE_SIZE ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 scalar_t__ snprintf (char*,size_t,char*,unsigned long long,unsigned int) ;

__attribute__((used)) static ssize_t
badblocks_show(struct badblocks *bb, char *page, int unack)
{
 size_t len;
 int i;
 u64 *p = bb->page;
 unsigned seq;

 if (bb->shift < 0)
  return 0;

retry:
 seq = read_seqbegin(&bb->lock);

 len = 0;
 i = 0;

 while (len < PAGE_SIZE && i < bb->count) {
  sector_t s = BB_OFFSET(p[i]);
  unsigned int length = BB_LEN(p[i]);
  int ack = BB_ACK(p[i]);
  i++;

  if (unack && ack)
   continue;

  len += snprintf(page+len, PAGE_SIZE-len, "%llu %u\n",
    (unsigned long long)s << bb->shift,
    length << bb->shift);
 }
 if (unack && len == 0)
  bb->unacked_exist = 0;

 if (read_seqretry(&bb->lock, seq))
  goto retry;

 return len;
}
