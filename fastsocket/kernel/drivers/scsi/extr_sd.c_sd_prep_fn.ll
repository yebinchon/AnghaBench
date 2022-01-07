; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_prep_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_prep_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32, i64, i64 }
%struct.request = type { i32, i64, %struct.scsi_cmnd*, %struct.gendisk* }
%struct.scsi_cmnd = type { i32*, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32 }

@REQ_DISCARD = common dso_local global i32 0, align 4
@REQ_FLUSH = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@BLKPREP_KILL = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sd_init_command: block=%llu, count=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Finishing %u sectors\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Retry with 0x%p\0A\00", align 1
@SD_LAST_BUGGY_SECTORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"block=%llu\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Bad block number requested\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown command %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s %d/%u 512 byte blocks.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@SD_DIF_TYPE2_PROTECTION = common dso_local global i32 0, align 4
@sd_cdb_pool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@SD_EXT_CDB_SIZE = common dso_local global i32 0, align 4
@VARIABLE_LENGTH_CMD = common dso_local global i32 0, align 4
@READ_32 = common dso_local global i32 0, align 4
@WRITE_32 = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"FUA write on READ/WRITE(6) drive\0A\00", align 1
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @sd_prep_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_prep_fn(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.scsi_disk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %6, align 8
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 3
  %20 = load %struct.gendisk*, %struct.gendisk** %19, align 8
  store %struct.gendisk* %20, %struct.gendisk** %7, align 8
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = call i64 @blk_rq_pos(%struct.request* %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @blk_rq_sectors(%struct.request* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REQ_DISCARD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = call i32 @sd_setup_discard_cmnd(%struct.scsi_device* %32, %struct.request* %33)
  store i32 %34, i32* %12, align 4
  br label %864

35:                                               ; preds = %2
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @REQ_FLUSH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %44 = load %struct.request*, %struct.request** %4, align 8
  %45 = call i32 @scsi_setup_flush_cmnd(%struct.scsi_device* %43, %struct.request* %44)
  store i32 %45, i32* %12, align 4
  br label %864

46:                                               ; preds = %35
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = call i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device* %53, %struct.request* %54)
  store i32 %55, i32* %12, align 4
  br label %864

56:                                               ; preds = %46
  %57 = load %struct.request*, %struct.request** %4, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REQ_TYPE_FS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %63, i32* %12, align 4
  br label %864

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = call i32 @scsi_setup_fs_cmnd(%struct.scsi_device* %68, %struct.request* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @BLKPREP_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %864

75:                                               ; preds = %67
  %76 = load %struct.request*, %struct.request** %4, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 2
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %77, align 8
  store %struct.scsi_cmnd* %78, %struct.scsi_cmnd** %5, align 8
  %79 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %80 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %79)
  store %struct.scsi_disk* %80, %struct.scsi_disk** %8, align 8
  %81 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %82, %struct.scsi_cmnd* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %85)
  %87 = call i32 @SCSI_LOG_HLQUEUE(i32 1, i32 %86)
  %88 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %89 = icmp ne %struct.scsi_device* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %75
  %91 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %92 = call i32 @scsi_device_online(%struct.scsi_device* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.request*, %struct.request** %4, align 8
  %97 = call i32 @blk_rq_sectors(%struct.request* %96)
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %101 = call i64 @get_capacity(%struct.gendisk* %100)
  %102 = icmp sgt i64 %99, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %94, %90, %75
  %104 = load i32, i32* @KERN_INFO, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %106 = load %struct.request*, %struct.request** %4, align 8
  %107 = call i32 @blk_rq_sectors(%struct.request* %106)
  %108 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %104, %struct.scsi_cmnd* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = call i32 @SCSI_LOG_HLQUEUE(i32 2, i32 %108)
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %110, %struct.scsi_cmnd* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %112)
  %114 = call i32 @SCSI_LOG_HLQUEUE(i32 2, i32 %113)
  br label %864

115:                                              ; preds = %94
  %116 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %117 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %864

121:                                              ; preds = %115
  %122 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %123 = call i64 @get_capacity(%struct.gendisk* %122)
  %124 = load i32, i32* @SD_LAST_BUGGY_SECTORS, align 4
  %125 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %126 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 512
  %129 = mul nsw i32 %124, %128
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %123, %130
  store i64 %131, i64* %10, align 8
  %132 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %133 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %121
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = load i64, i64* %10, align 8
  %142 = icmp sgt i64 %140, %141
  br label %143

143:                                              ; preds = %136, %121
  %144 = phi i1 [ false, %121 ], [ %142, %136 ]
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %9, align 8
  %155 = sub nsw i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %162

157:                                              ; preds = %148
  %158 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %159 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %160, 512
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %143
  %164 = load i32, i32* @KERN_INFO, align 4
  %165 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %164, %struct.scsi_cmnd* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %166)
  %168 = call i32 @SCSI_LOG_HLQUEUE(i32 2, i32 %167)
  %169 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 1024
  br i1 %172, label %173, label %192

173:                                              ; preds = %163
  %174 = load i64, i64* %9, align 8
  %175 = and i64 %174, 1
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = load %struct.request*, %struct.request** %4, align 8
  %179 = call i32 @blk_rq_sectors(%struct.request* %178)
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177, %173
  %183 = load i32, i32* @KERN_ERR, align 4
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %185 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %183, %struct.scsi_cmnd* %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %864

186:                                              ; preds = %177
  %187 = load i64, i64* %9, align 8
  %188 = ashr i64 %187, 1
  store i64 %188, i64* %9, align 8
  %189 = load i32, i32* %11, align 4
  %190 = lshr i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191, %163
  %193 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %194 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 2048
  br i1 %196, label %197, label %216

197:                                              ; preds = %192
  %198 = load i64, i64* %9, align 8
  %199 = and i64 %198, 3
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = load %struct.request*, %struct.request** %4, align 8
  %203 = call i32 @blk_rq_sectors(%struct.request* %202)
  %204 = and i32 %203, 3
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201, %197
  %207 = load i32, i32* @KERN_ERR, align 4
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %209 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %207, %struct.scsi_cmnd* %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %864

210:                                              ; preds = %201
  %211 = load i64, i64* %9, align 8
  %212 = ashr i64 %211, 2
  store i64 %212, i64* %9, align 8
  %213 = load i32, i32* %11, align 4
  %214 = lshr i32 %213, 2
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %192
  %217 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %218 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 4096
  br i1 %220, label %221, label %240

221:                                              ; preds = %216
  %222 = load i64, i64* %9, align 8
  %223 = and i64 %222, 7
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %221
  %226 = load %struct.request*, %struct.request** %4, align 8
  %227 = call i32 @blk_rq_sectors(%struct.request* %226)
  %228 = and i32 %227, 7
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225, %221
  %231 = load i32, i32* @KERN_ERR, align 4
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %233 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %231, %struct.scsi_cmnd* %232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %864

234:                                              ; preds = %225
  %235 = load i64, i64* %9, align 8
  %236 = ashr i64 %235, 3
  store i64 %236, i64* %9, align 8
  %237 = load i32, i32* %11, align 4
  %238 = lshr i32 %237, 3
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %216
  %241 = load %struct.request*, %struct.request** %4, align 8
  %242 = call i64 @rq_data_dir(%struct.request* %241)
  %243 = load i64, i64* @WRITE, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %271

245:                                              ; preds = %240
  %246 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %247 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  br label %864

251:                                              ; preds = %245
  %252 = load i32, i32* @WRITE_6, align 4
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %254 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  store i32 %252, i32* %256, align 4
  %257 = load i32, i32* @DMA_TO_DEVICE, align 4
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %259 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  %260 = load %struct.request*, %struct.request** %4, align 8
  %261 = call i64 @blk_integrity_rq(%struct.request* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %251
  %264 = load %struct.request*, %struct.request** %4, align 8
  %265 = load i64, i64* %9, align 8
  %266 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %267 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @sd_dif_prepare(%struct.request* %264, i64 %265, i32 %268)
  br label %270

270:                                              ; preds = %263, %251
  br label %293

271:                                              ; preds = %240
  %272 = load %struct.request*, %struct.request** %4, align 8
  %273 = call i64 @rq_data_dir(%struct.request* %272)
  %274 = load i64, i64* @READ, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %271
  %277 = load i32, i32* @READ_6, align 4
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %279 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %277, i32* %281, align 4
  %282 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %284 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  br label %292

285:                                              ; preds = %271
  %286 = load i32, i32* @KERN_ERR, align 4
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %288 = load %struct.request*, %struct.request** %4, align 8
  %289 = getelementptr inbounds %struct.request, %struct.request* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %286, %struct.scsi_cmnd* %287, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %290)
  br label %864

292:                                              ; preds = %276
  br label %293

293:                                              ; preds = %292, %270
  %294 = load i32, i32* @KERN_INFO, align 4
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %296 = load %struct.request*, %struct.request** %4, align 8
  %297 = call i64 @rq_data_dir(%struct.request* %296)
  %298 = load i64, i64* @WRITE, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.request*, %struct.request** %4, align 8
  %304 = call i32 @blk_rq_sectors(%struct.request* %303)
  %305 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %294, %struct.scsi_cmnd* %295, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %301, i32 %302, i32 %304)
  %306 = call i32 @SCSI_LOG_HLQUEUE(i32 2, i32 %305)
  %307 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %308 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %311 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @scsi_host_dif_capable(i32 %309, i32 %312)
  store i32 %313, i32* %13, align 4
  %314 = load i32, i32* %13, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %293
  store i8 32, i8* %14, align 1
  br label %318

317:                                              ; preds = %293
  store i8 0, i8* %14, align 1
  br label %318

318:                                              ; preds = %317, %316
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* @SD_DIF_TYPE2_PROTECTION, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %527

322:                                              ; preds = %318
  %323 = load i32, i32* @sd_cdb_pool, align 4
  %324 = load i32, i32* @GFP_ATOMIC, align 4
  %325 = call i32* @mempool_alloc(i32 %323, i32 %324)
  %326 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %327 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %326, i32 0, i32 0
  store i32* %325, i32** %327, align 8
  %328 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %329 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = icmp eq i32* %330, null
  %332 = zext i1 %331 to i32
  %333 = call i64 @unlikely(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %322
  %336 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %336, i32* %12, align 4
  br label %864

337:                                              ; preds = %322
  %338 = load i32, i32* @SD_EXT_CDB_SIZE, align 4
  %339 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %340 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %339, i32 0, i32 6
  store i32 %338, i32* %340, align 8
  %341 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %342 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %345 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @memset(i32* %343, i32 0, i32 %346)
  %348 = load i32, i32* @VARIABLE_LENGTH_CMD, align 4
  %349 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %350 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  store i32 %348, i32* %352, align 4
  %353 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %354 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 7
  store i32 24, i32* %356, align 4
  %357 = load %struct.request*, %struct.request** %4, align 8
  %358 = call i64 @rq_data_dir(%struct.request* %357)
  %359 = load i64, i64* @READ, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %337
  %362 = load i32, i32* @READ_32, align 4
  br label %365

363:                                              ; preds = %337
  %364 = load i32, i32* @WRITE_32, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %368 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 9
  store i32 %366, i32* %370, align 4
  %371 = load i8, i8* %14, align 1
  %372 = zext i8 %371 to i32
  %373 = load %struct.request*, %struct.request** %4, align 8
  %374 = getelementptr inbounds %struct.request, %struct.request* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @REQ_FUA, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i32 8, i32 0
  %381 = or i32 %372, %380
  %382 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %383 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 10
  store i32 %381, i32* %385, align 4
  %386 = load i64, i64* %9, align 8
  %387 = ashr i64 %386, 56
  %388 = trunc i64 %387 to i8
  %389 = zext i8 %388 to i32
  %390 = and i32 %389, 255
  %391 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %392 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 12
  store i32 %390, i32* %394, align 4
  %395 = load i64, i64* %9, align 8
  %396 = ashr i64 %395, 48
  %397 = trunc i64 %396 to i8
  %398 = zext i8 %397 to i32
  %399 = and i32 %398, 255
  %400 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %401 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 13
  store i32 %399, i32* %403, align 4
  %404 = load i64, i64* %9, align 8
  %405 = ashr i64 %404, 40
  %406 = trunc i64 %405 to i8
  %407 = zext i8 %406 to i32
  %408 = and i32 %407, 255
  %409 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %410 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 14
  store i32 %408, i32* %412, align 4
  %413 = load i64, i64* %9, align 8
  %414 = ashr i64 %413, 32
  %415 = trunc i64 %414 to i8
  %416 = zext i8 %415 to i32
  %417 = and i32 %416, 255
  %418 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %419 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 15
  store i32 %417, i32* %421, align 4
  %422 = load i64, i64* %9, align 8
  %423 = ashr i64 %422, 24
  %424 = trunc i64 %423 to i8
  %425 = zext i8 %424 to i32
  %426 = and i32 %425, 255
  %427 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %428 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %427, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 16
  store i32 %426, i32* %430, align 4
  %431 = load i64, i64* %9, align 8
  %432 = ashr i64 %431, 16
  %433 = trunc i64 %432 to i8
  %434 = zext i8 %433 to i32
  %435 = and i32 %434, 255
  %436 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %437 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 17
  store i32 %435, i32* %439, align 4
  %440 = load i64, i64* %9, align 8
  %441 = ashr i64 %440, 8
  %442 = trunc i64 %441 to i8
  %443 = zext i8 %442 to i32
  %444 = and i32 %443, 255
  %445 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %446 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %445, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 18
  store i32 %444, i32* %448, align 4
  %449 = load i64, i64* %9, align 8
  %450 = trunc i64 %449 to i8
  %451 = zext i8 %450 to i32
  %452 = and i32 %451, 255
  %453 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %454 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 19
  store i32 %452, i32* %456, align 4
  %457 = load i64, i64* %9, align 8
  %458 = ashr i64 %457, 24
  %459 = trunc i64 %458 to i8
  %460 = zext i8 %459 to i32
  %461 = and i32 %460, 255
  %462 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %463 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 20
  store i32 %461, i32* %465, align 4
  %466 = load i64, i64* %9, align 8
  %467 = ashr i64 %466, 16
  %468 = trunc i64 %467 to i8
  %469 = zext i8 %468 to i32
  %470 = and i32 %469, 255
  %471 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %472 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %471, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 21
  store i32 %470, i32* %474, align 4
  %475 = load i64, i64* %9, align 8
  %476 = ashr i64 %475, 8
  %477 = trunc i64 %476 to i8
  %478 = zext i8 %477 to i32
  %479 = and i32 %478, 255
  %480 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %481 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 22
  store i32 %479, i32* %483, align 4
  %484 = load i64, i64* %9, align 8
  %485 = trunc i64 %484 to i8
  %486 = zext i8 %485 to i32
  %487 = and i32 %486, 255
  %488 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %489 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 23
  store i32 %487, i32* %491, align 4
  %492 = load i32, i32* %11, align 4
  %493 = lshr i32 %492, 24
  %494 = trunc i32 %493 to i8
  %495 = zext i8 %494 to i32
  %496 = and i32 %495, 255
  %497 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %498 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %497, i32 0, i32 0
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 28
  store i32 %496, i32* %500, align 4
  %501 = load i32, i32* %11, align 4
  %502 = lshr i32 %501, 16
  %503 = trunc i32 %502 to i8
  %504 = zext i8 %503 to i32
  %505 = and i32 %504, 255
  %506 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %507 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %506, i32 0, i32 0
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 29
  store i32 %505, i32* %509, align 4
  %510 = load i32, i32* %11, align 4
  %511 = lshr i32 %510, 8
  %512 = trunc i32 %511 to i8
  %513 = zext i8 %512 to i32
  %514 = and i32 %513, 255
  %515 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %516 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %515, i32 0, i32 0
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 30
  store i32 %514, i32* %518, align 4
  %519 = load i32, i32* %11, align 4
  %520 = trunc i32 %519 to i8
  %521 = zext i8 %520 to i32
  %522 = and i32 %521, 255
  %523 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %524 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %523, i32 0, i32 0
  %525 = load i32*, i32** %524, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 31
  store i32 %522, i32* %526, align 4
  br label %831

527:                                              ; preds = %318
  %528 = load i64, i64* %9, align 8
  %529 = icmp sgt i64 %528, 4294967295
  br i1 %529, label %530, label %669

530:                                              ; preds = %527
  %531 = load i32, i32* @READ_16, align 4
  %532 = load i32, i32* @READ_6, align 4
  %533 = sub nsw i32 %531, %532
  %534 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %535 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %534, i32 0, i32 0
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %538, %533
  store i32 %539, i32* %537, align 4
  %540 = load i8, i8* %14, align 1
  %541 = zext i8 %540 to i32
  %542 = load %struct.request*, %struct.request** %4, align 8
  %543 = getelementptr inbounds %struct.request, %struct.request* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @REQ_FUA, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  %548 = zext i1 %547 to i64
  %549 = select i1 %547, i32 8, i32 0
  %550 = or i32 %541, %549
  %551 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %552 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %551, i32 0, i32 0
  %553 = load i32*, i32** %552, align 8
  %554 = getelementptr inbounds i32, i32* %553, i64 1
  store i32 %550, i32* %554, align 4
  %555 = load i64, i64* %9, align 8
  %556 = ashr i64 %555, 56
  %557 = trunc i64 %556 to i8
  %558 = zext i8 %557 to i32
  %559 = and i32 %558, 255
  %560 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %561 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %560, i32 0, i32 0
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 2
  store i32 %559, i32* %563, align 4
  %564 = load i64, i64* %9, align 8
  %565 = ashr i64 %564, 48
  %566 = trunc i64 %565 to i8
  %567 = zext i8 %566 to i32
  %568 = and i32 %567, 255
  %569 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %570 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %569, i32 0, i32 0
  %571 = load i32*, i32** %570, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 3
  store i32 %568, i32* %572, align 4
  %573 = load i64, i64* %9, align 8
  %574 = ashr i64 %573, 40
  %575 = trunc i64 %574 to i8
  %576 = zext i8 %575 to i32
  %577 = and i32 %576, 255
  %578 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %579 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %578, i32 0, i32 0
  %580 = load i32*, i32** %579, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 4
  store i32 %577, i32* %581, align 4
  %582 = load i64, i64* %9, align 8
  %583 = ashr i64 %582, 32
  %584 = trunc i64 %583 to i8
  %585 = zext i8 %584 to i32
  %586 = and i32 %585, 255
  %587 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %588 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 5
  store i32 %586, i32* %590, align 4
  %591 = load i64, i64* %9, align 8
  %592 = ashr i64 %591, 24
  %593 = trunc i64 %592 to i8
  %594 = zext i8 %593 to i32
  %595 = and i32 %594, 255
  %596 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %597 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %596, i32 0, i32 0
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 6
  store i32 %595, i32* %599, align 4
  %600 = load i64, i64* %9, align 8
  %601 = ashr i64 %600, 16
  %602 = trunc i64 %601 to i8
  %603 = zext i8 %602 to i32
  %604 = and i32 %603, 255
  %605 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %606 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %605, i32 0, i32 0
  %607 = load i32*, i32** %606, align 8
  %608 = getelementptr inbounds i32, i32* %607, i64 7
  store i32 %604, i32* %608, align 4
  %609 = load i64, i64* %9, align 8
  %610 = ashr i64 %609, 8
  %611 = trunc i64 %610 to i8
  %612 = zext i8 %611 to i32
  %613 = and i32 %612, 255
  %614 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %615 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %614, i32 0, i32 0
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 8
  store i32 %613, i32* %617, align 4
  %618 = load i64, i64* %9, align 8
  %619 = trunc i64 %618 to i8
  %620 = zext i8 %619 to i32
  %621 = and i32 %620, 255
  %622 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %623 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %622, i32 0, i32 0
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 9
  store i32 %621, i32* %625, align 4
  %626 = load i32, i32* %11, align 4
  %627 = lshr i32 %626, 24
  %628 = trunc i32 %627 to i8
  %629 = zext i8 %628 to i32
  %630 = and i32 %629, 255
  %631 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %632 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %631, i32 0, i32 0
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 10
  store i32 %630, i32* %634, align 4
  %635 = load i32, i32* %11, align 4
  %636 = lshr i32 %635, 16
  %637 = trunc i32 %636 to i8
  %638 = zext i8 %637 to i32
  %639 = and i32 %638, 255
  %640 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %641 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %640, i32 0, i32 0
  %642 = load i32*, i32** %641, align 8
  %643 = getelementptr inbounds i32, i32* %642, i64 11
  store i32 %639, i32* %643, align 4
  %644 = load i32, i32* %11, align 4
  %645 = lshr i32 %644, 8
  %646 = trunc i32 %645 to i8
  %647 = zext i8 %646 to i32
  %648 = and i32 %647, 255
  %649 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %650 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %649, i32 0, i32 0
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 12
  store i32 %648, i32* %652, align 4
  %653 = load i32, i32* %11, align 4
  %654 = trunc i32 %653 to i8
  %655 = zext i8 %654 to i32
  %656 = and i32 %655, 255
  %657 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %658 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %657, i32 0, i32 0
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 13
  store i32 %656, i32* %660, align 4
  %661 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %662 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %661, i32 0, i32 0
  %663 = load i32*, i32** %662, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 15
  store i32 0, i32* %664, align 4
  %665 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %666 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %665, i32 0, i32 0
  %667 = load i32*, i32** %666, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 14
  store i32 0, i32* %668, align 4
  br label %830

669:                                              ; preds = %527
  %670 = load i32, i32* %11, align 4
  %671 = icmp ugt i32 %670, 255
  br i1 %671, label %688, label %672

672:                                              ; preds = %669
  %673 = load i64, i64* %9, align 8
  %674 = icmp sgt i64 %673, 2097151
  br i1 %674, label %688, label %675

675:                                              ; preds = %672
  %676 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %677 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %676, i32 0, i32 5
  %678 = load %struct.TYPE_4__*, %struct.TYPE_4__** %677, align 8
  %679 = call i64 @scsi_device_protection(%struct.TYPE_4__* %678)
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %688, label %681

681:                                              ; preds = %675
  %682 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %683 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %682, i32 0, i32 5
  %684 = load %struct.TYPE_4__*, %struct.TYPE_4__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %777

688:                                              ; preds = %681, %675, %672, %669
  %689 = load i32, i32* %11, align 4
  %690 = icmp ugt i32 %689, 65535
  br i1 %690, label %691, label %692

691:                                              ; preds = %688
  store i32 65535, i32* %11, align 4
  br label %692

692:                                              ; preds = %691, %688
  %693 = load i32, i32* @READ_10, align 4
  %694 = load i32, i32* @READ_6, align 4
  %695 = sub nsw i32 %693, %694
  %696 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %697 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %696, i32 0, i32 0
  %698 = load i32*, i32** %697, align 8
  %699 = getelementptr inbounds i32, i32* %698, i64 0
  %700 = load i32, i32* %699, align 4
  %701 = add nsw i32 %700, %695
  store i32 %701, i32* %699, align 4
  %702 = load i8, i8* %14, align 1
  %703 = zext i8 %702 to i32
  %704 = load %struct.request*, %struct.request** %4, align 8
  %705 = getelementptr inbounds %struct.request, %struct.request* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = load i32, i32* @REQ_FUA, align 4
  %708 = and i32 %706, %707
  %709 = icmp ne i32 %708, 0
  %710 = zext i1 %709 to i64
  %711 = select i1 %709, i32 8, i32 0
  %712 = or i32 %703, %711
  %713 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %714 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %713, i32 0, i32 0
  %715 = load i32*, i32** %714, align 8
  %716 = getelementptr inbounds i32, i32* %715, i64 1
  store i32 %712, i32* %716, align 4
  %717 = load i64, i64* %9, align 8
  %718 = ashr i64 %717, 24
  %719 = trunc i64 %718 to i8
  %720 = zext i8 %719 to i32
  %721 = and i32 %720, 255
  %722 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %723 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %722, i32 0, i32 0
  %724 = load i32*, i32** %723, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 2
  store i32 %721, i32* %725, align 4
  %726 = load i64, i64* %9, align 8
  %727 = ashr i64 %726, 16
  %728 = trunc i64 %727 to i8
  %729 = zext i8 %728 to i32
  %730 = and i32 %729, 255
  %731 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %732 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %731, i32 0, i32 0
  %733 = load i32*, i32** %732, align 8
  %734 = getelementptr inbounds i32, i32* %733, i64 3
  store i32 %730, i32* %734, align 4
  %735 = load i64, i64* %9, align 8
  %736 = ashr i64 %735, 8
  %737 = trunc i64 %736 to i8
  %738 = zext i8 %737 to i32
  %739 = and i32 %738, 255
  %740 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %741 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %740, i32 0, i32 0
  %742 = load i32*, i32** %741, align 8
  %743 = getelementptr inbounds i32, i32* %742, i64 4
  store i32 %739, i32* %743, align 4
  %744 = load i64, i64* %9, align 8
  %745 = trunc i64 %744 to i8
  %746 = zext i8 %745 to i32
  %747 = and i32 %746, 255
  %748 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %749 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %748, i32 0, i32 0
  %750 = load i32*, i32** %749, align 8
  %751 = getelementptr inbounds i32, i32* %750, i64 5
  store i32 %747, i32* %751, align 4
  %752 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %753 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %752, i32 0, i32 0
  %754 = load i32*, i32** %753, align 8
  %755 = getelementptr inbounds i32, i32* %754, i64 9
  store i32 0, i32* %755, align 4
  %756 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %757 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %756, i32 0, i32 0
  %758 = load i32*, i32** %757, align 8
  %759 = getelementptr inbounds i32, i32* %758, i64 6
  store i32 0, i32* %759, align 4
  %760 = load i32, i32* %11, align 4
  %761 = lshr i32 %760, 8
  %762 = trunc i32 %761 to i8
  %763 = zext i8 %762 to i32
  %764 = and i32 %763, 255
  %765 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %766 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %765, i32 0, i32 0
  %767 = load i32*, i32** %766, align 8
  %768 = getelementptr inbounds i32, i32* %767, i64 7
  store i32 %764, i32* %768, align 4
  %769 = load i32, i32* %11, align 4
  %770 = trunc i32 %769 to i8
  %771 = zext i8 %770 to i32
  %772 = and i32 %771, 255
  %773 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %774 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %773, i32 0, i32 0
  %775 = load i32*, i32** %774, align 8
  %776 = getelementptr inbounds i32, i32* %775, i64 8
  store i32 %772, i32* %776, align 4
  br label %829

777:                                              ; preds = %681
  %778 = load %struct.request*, %struct.request** %4, align 8
  %779 = getelementptr inbounds %struct.request, %struct.request* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 8
  %781 = load i32, i32* @REQ_FUA, align 4
  %782 = and i32 %780, %781
  %783 = call i64 @unlikely(i32 %782)
  %784 = icmp ne i64 %783, 0
  br i1 %784, label %785, label %789

785:                                              ; preds = %777
  %786 = load i32, i32* @KERN_ERR, align 4
  %787 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %788 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %786, %struct.scsi_cmnd* %787, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %864

789:                                              ; preds = %777
  %790 = load i64, i64* %9, align 8
  %791 = ashr i64 %790, 16
  %792 = and i64 %791, 31
  %793 = trunc i64 %792 to i8
  %794 = zext i8 %793 to i32
  %795 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %796 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %795, i32 0, i32 0
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 1
  %799 = load i32, i32* %798, align 4
  %800 = or i32 %799, %794
  store i32 %800, i32* %798, align 4
  %801 = load i64, i64* %9, align 8
  %802 = ashr i64 %801, 8
  %803 = and i64 %802, 255
  %804 = trunc i64 %803 to i8
  %805 = zext i8 %804 to i32
  %806 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %807 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %806, i32 0, i32 0
  %808 = load i32*, i32** %807, align 8
  %809 = getelementptr inbounds i32, i32* %808, i64 2
  store i32 %805, i32* %809, align 4
  %810 = load i64, i64* %9, align 8
  %811 = trunc i64 %810 to i8
  %812 = zext i8 %811 to i32
  %813 = and i32 %812, 255
  %814 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %815 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %814, i32 0, i32 0
  %816 = load i32*, i32** %815, align 8
  %817 = getelementptr inbounds i32, i32* %816, i64 3
  store i32 %813, i32* %817, align 4
  %818 = load i32, i32* %11, align 4
  %819 = trunc i32 %818 to i8
  %820 = zext i8 %819 to i32
  %821 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %822 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %821, i32 0, i32 0
  %823 = load i32*, i32** %822, align 8
  %824 = getelementptr inbounds i32, i32* %823, i64 4
  store i32 %820, i32* %824, align 4
  %825 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %826 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %825, i32 0, i32 0
  %827 = load i32*, i32** %826, align 8
  %828 = getelementptr inbounds i32, i32* %827, i64 5
  store i32 0, i32* %828, align 4
  br label %829

829:                                              ; preds = %789, %692
  br label %830

830:                                              ; preds = %829, %530
  br label %831

831:                                              ; preds = %830, %365
  %832 = load i32, i32* %11, align 4
  %833 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %834 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 8
  %836 = mul i32 %832, %835
  %837 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %838 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %837, i32 0, i32 4
  %839 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %838, i32 0, i32 0
  store i32 %836, i32* %839, align 4
  %840 = load i32, i32* %13, align 4
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %846, label %842

842:                                              ; preds = %831
  %843 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %844 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %843)
  %845 = icmp ne i64 %844, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %842, %831
  %847 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %848 = load i32, i32* %13, align 4
  %849 = call i32 @sd_prot_op(%struct.scsi_cmnd* %847, i32 %848)
  br label %850

850:                                              ; preds = %846, %842
  %851 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %852 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %855 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %854, i32 0, i32 1
  store i32 %853, i32* %855, align 8
  %856 = load i32, i32* %11, align 4
  %857 = shl i32 %856, 9
  %858 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %859 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %858, i32 0, i32 2
  store i32 %857, i32* %859, align 4
  %860 = load i32, i32* @SD_MAX_RETRIES, align 4
  %861 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %862 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %861, i32 0, i32 3
  store i32 %860, i32* %862, align 8
  %863 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %863, i32* %12, align 4
  br label %864

864:                                              ; preds = %850, %785, %335, %285, %250, %230, %206, %182, %120, %103, %74, %62, %52, %42, %31
  %865 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %866 = load %struct.request*, %struct.request** %4, align 8
  %867 = load i32, i32* %12, align 4
  %868 = call i32 @scsi_prep_return(%struct.request_queue* %865, %struct.request* %866, i32 %867)
  ret i32 %868
}

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @sd_setup_discard_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @scsi_setup_flush_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @scsi_setup_fs_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i64 @get_capacity(%struct.gendisk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i32 @sd_dif_prepare(%struct.request*, i64, i32) #1

declare dso_local i32 @scsi_host_dif_capable(i32, i32) #1

declare dso_local i32* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @scsi_device_protection(%struct.TYPE_4__*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_prot_op(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_prep_return(%struct.request_queue*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
