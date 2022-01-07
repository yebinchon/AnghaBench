
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char file_type; int formatted_ext_name; int mtime; int crc32; int file_size; int alloc_size; } ;
typedef TYPE_1__ FDFSTrunkHeader ;


 scalar_t__ FDFS_FILE_EXT_NAME_MAX_LEN ;
 int FDFS_TRUNK_FILE_ALLOC_SIZE_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_CRC32_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_EXT_NAME_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_MTIME_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_SIZE_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_TYPE_OFFSET ;
 int int2buff (int ,char*) ;
 int memcpy (char*,int ,scalar_t__) ;

void trunk_pack_header(const FDFSTrunkHeader *pTrunkHeader, char *buff)
{
 *(buff + FDFS_TRUNK_FILE_FILE_TYPE_OFFSET) = pTrunkHeader->file_type;
 int2buff(pTrunkHeader->alloc_size, buff + FDFS_TRUNK_FILE_ALLOC_SIZE_OFFSET);

 int2buff(pTrunkHeader->file_size, buff + FDFS_TRUNK_FILE_FILE_SIZE_OFFSET);

 int2buff(pTrunkHeader->crc32, buff + FDFS_TRUNK_FILE_FILE_CRC32_OFFSET);

 int2buff(pTrunkHeader->mtime, buff + FDFS_TRUNK_FILE_FILE_MTIME_OFFSET);

 memcpy(buff + FDFS_TRUNK_FILE_FILE_EXT_NAME_OFFSET, pTrunkHeader->formatted_ext_name, FDFS_FILE_EXT_NAME_MAX_LEN + 1);


}
