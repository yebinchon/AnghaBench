
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int u32 ;
struct timeval {int tv_sec; } ;
struct TYPE_19__ {void* parameter_count; } ;
struct TYPE_17__ {TYPE_2__* sgl; } ;
struct TYPE_18__ {TYPE_3__ param; } ;
struct TYPE_22__ {int request_id; TYPE_5__ byte6_offset; int size; TYPE_4__ byte8_offset; int opcode__sgloffset; } ;
struct TYPE_21__ {int ** srb; scalar_t__* generic_buffer_virt; int * generic_buffer_phys; TYPE_6__** command_packet_virt; } ;
struct TYPE_15__ {TYPE_9__ oldcommand; } ;
struct TYPE_20__ {int data; void* parameter_size_bytes; void* parameter_id; void* table_id; TYPE_1__ command; } ;
struct TYPE_16__ {void* length; int address; } ;
struct TYPE_14__ {int tz_minuteswest; } ;
typedef TYPE_6__ TW_Param_Apache ;
typedef TYPE_7__ TW_Device_Extension ;
typedef TYPE_6__ TW_Command_Full ;
typedef TYPE_9__ TW_Command ;


 int TW_COMMAND_SIZE ;
 int TW_CPU_TO_SGL (int ) ;
 int TW_OPSGL_IN (int,int ) ;
 int TW_OP_SET_PARAM ;
 int TW_SECTOR_SIZE ;
 int TW_TIMEKEEP_TABLE ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int do_gettimeofday (struct timeval*) ;
 int memcpy (int ,int*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 TYPE_12__ sys_tz ;
 int twa_post_command_packet (TYPE_7__*,int,int) ;

__attribute__((used)) static void twa_aen_sync_time(TW_Device_Extension *tw_dev, int request_id)
{
 u32 schedulertime;
 struct timeval utc;
 TW_Command_Full *full_command_packet;
 TW_Command *command_packet;
 TW_Param_Apache *param;
 u32 local_time;


 full_command_packet = tw_dev->command_packet_virt[request_id];
 memset(full_command_packet, 0, sizeof(TW_Command_Full));
 command_packet = &full_command_packet->command.oldcommand;
 command_packet->opcode__sgloffset = TW_OPSGL_IN(2, TW_OP_SET_PARAM);
 command_packet->request_id = request_id;
 command_packet->byte8_offset.param.sgl[0].address = TW_CPU_TO_SGL(tw_dev->generic_buffer_phys[request_id]);
 command_packet->byte8_offset.param.sgl[0].length = cpu_to_le32(TW_SECTOR_SIZE);
 command_packet->size = TW_COMMAND_SIZE;
 command_packet->byte6_offset.parameter_count = cpu_to_le16(1);


 param = (TW_Param_Apache *)tw_dev->generic_buffer_virt[request_id];
 memset(param, 0, TW_SECTOR_SIZE);
 param->table_id = cpu_to_le16(TW_TIMEKEEP_TABLE | 0x8000);
 param->parameter_id = cpu_to_le16(0x3);
 param->parameter_size_bytes = cpu_to_le16(4);



 do_gettimeofday(&utc);
 local_time = (u32)(utc.tv_sec - (sys_tz.tz_minuteswest * 60));
 schedulertime = local_time - (3 * 86400);
 schedulertime = cpu_to_le32(schedulertime % 604800);

 memcpy(param->data, &schedulertime, sizeof(u32));


 tw_dev->srb[request_id] = ((void*)0);


 twa_post_command_packet(tw_dev, request_id, 1);
}
