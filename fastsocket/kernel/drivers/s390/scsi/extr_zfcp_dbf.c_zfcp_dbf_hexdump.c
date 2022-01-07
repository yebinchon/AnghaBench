
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf_dump {int total_size; int offset; scalar_t__ size; int data; int tag; } ;
typedef int debug_info_t ;


 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int *,int,struct zfcp_dbf_dump*,scalar_t__) ;
 int memcpy (int ,char*,scalar_t__) ;
 int memset (void*,int ,int) ;
 scalar_t__ min (int,int) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void zfcp_dbf_hexdump(debug_info_t *dbf, void *to, int to_len,
        int level, char *from, int from_len)
{
 int offset;
 struct zfcp_dbf_dump *dump = to;
 int room = to_len - sizeof(*dump);

 for (offset = 0; offset < from_len; offset += dump->size) {
  memset(to, 0, to_len);
  strncpy(dump->tag, "dump", ZFCP_DBF_TAG_SIZE);
  dump->total_size = from_len;
  dump->offset = offset;
  dump->size = min(from_len - offset, room);
  memcpy(dump->data, from + offset, dump->size);
  debug_event(dbf, level, dump, dump->size + sizeof(*dump));
 }
}
