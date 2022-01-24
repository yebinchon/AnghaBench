#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_size; } ;
struct fast_task_info {scalar_t__ arg; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  decode_buff ;
struct TYPE_9__ {char** paths; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  fname2log; } ;
struct TYPE_8__ {TYPE_2__ file_context; } ;
struct TYPE_6__ {int storage_id; int /*<<< orphan*/  mtime; int /*<<< orphan*/  fsize; } ;
typedef  TYPE_1__ StorageFileInfoForCRC32 ;
typedef  TYPE_2__ StorageFileContext ;
typedef  TYPE_3__ StorageClientInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FDFS_FILENAME_BASE64_LENGTH ; 
 int FDFS_LOGIC_FILE_PATH_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  calc_crc32_done_callback_for_query_finfo ; 
 int /*<<< orphan*/  g_fdfs_base64_context ; 
 TYPE_5__ g_fdfs_store_paths ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct fast_task_info*,int /*<<< orphan*/ ,int const,struct stat*,int) ; 
 int FUNC7 (struct fast_task_info*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char const*,...) ; 

__attribute__((used)) static int FUNC9(struct fast_task_info *pTask,
        const char *filename, const char *true_filename,
        struct stat *file_stat, const int store_path_index)
{
	char decode_buff[64];
	int buff_len;
    int storage_id;
    int crc32;
    int64_t file_size;
    StorageFileInfoForCRC32 finfo;

	FUNC4(decode_buff, 0, sizeof(decode_buff));
	FUNC1(&g_fdfs_base64_context, filename +
		FDFS_LOGIC_FILE_PATH_LEN, FDFS_FILENAME_BASE64_LENGTH,
		decode_buff, &buff_len);
	storage_id = FUNC5(FUNC2(decode_buff));
	file_size = FUNC3(decode_buff + sizeof(int) * 2);
	if (FUNC0(file_size))
    {
        StorageClientInfo *pClientInfo;
        StorageFileContext *pFileContext;

        pClientInfo = (StorageClientInfo *)pTask->arg;
        pFileContext =  &(pClientInfo->file_context);

        FUNC8(pFileContext->fname2log, sizeof(pFileContext->fname2log),
                "%s", filename);
        FUNC8(pFileContext->filename, sizeof(pFileContext->filename),
                "%s/data/%s", g_fdfs_store_paths.paths[store_path_index],
                true_filename);

        return FUNC6(pTask,
                calc_crc32_done_callback_for_query_finfo,
                store_path_index, file_stat, storage_id);
    }

    finfo.storage_id = storage_id;
    finfo.fsize = file_stat->st_size;
    finfo.mtime = file_stat->st_mtime;
	crc32 = FUNC2(decode_buff + sizeof(int) * 4);
    return FUNC7(pTask, &finfo, crc32);
}