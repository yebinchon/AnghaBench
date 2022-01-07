
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bitmap; } ;
typedef size_t ssize_t ;


 int bitmap_dirty_bits (int ,unsigned long,unsigned long) ;
 int bitmap_unplug (int ) ;
 int isspace (char) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 char* skip_spaces (char*) ;

__attribute__((used)) static ssize_t
bitmap_store(struct mddev *mddev, const char *buf, size_t len)
{
 char *end;
 unsigned long chunk, end_chunk;

 if (!mddev->bitmap)
  goto out;

 while (*buf) {
  chunk = end_chunk = simple_strtoul(buf, &end, 0);
  if (buf == end) break;
  if (*end == '-') {
   buf = end + 1;
   end_chunk = simple_strtoul(buf, &end, 0);
   if (buf == end) break;
  }
  if (*end && !isspace(*end)) break;
  bitmap_dirty_bits(mddev->bitmap, chunk, end_chunk);
  buf = skip_spaces(end);
 }
 bitmap_unplug(mddev->bitmap);
out:
 return len;
}
