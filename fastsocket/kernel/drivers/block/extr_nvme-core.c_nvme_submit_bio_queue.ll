; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_bio_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_bio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, i32, %struct.nvme_command* }
%struct.nvme_command = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i32, i8*, i32 }
%struct.nvme_ns = type { i32, i32, i32 }
%struct.bio = type { i32, i32, i32 }
%struct.nvme_iod = type { %struct.bio* }

@REQ_FLUSH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@bio_completion = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@NVME_RW_FUA = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@BIO_RW_AHEAD = common dso_local global i32 0, align 4
@NVME_RW_LR = common dso_local global i32 0, align 4
@NVME_RW_DSM_FREQ_PREFETCH = common dso_local global i32 0, align 4
@nvme_cmd_write = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@nvme_cmd_read = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, %struct.nvme_ns*, %struct.bio*)* @nvme_submit_bio_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_submit_bio_queue(%struct.nvme_queue* %0, %struct.nvme_ns* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.nvme_command*, align 8
  %9 = alloca %struct.nvme_iod*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %5, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %17 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = call i32 @bio_phys_segments(i32 %19, %struct.bio* %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REQ_FLUSH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %33 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %34 = call i32 @nvme_submit_flush_data(%struct.nvme_queue* %32, %struct.nvme_ns* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %257

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %28, %3
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.nvme_iod* @nvme_alloc_iod(i32 %43, i32 %46, i32 %47)
  store %struct.nvme_iod* %48, %struct.nvme_iod** %9, align 8
  %49 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %50 = icmp ne %struct.nvme_iod* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %255

52:                                               ; preds = %40
  %53 = load %struct.bio*, %struct.bio** %7, align 8
  %54 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %55 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %54, i32 0, i32 0
  store %struct.bio* %53, %struct.bio** %55, align 8
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %59 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %60 = load i32, i32* @bio_completion, align 4
  %61 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %62 = call i32 @alloc_cmdid(%struct.nvme_queue* %58, %struct.nvme_iod* %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %249

69:                                               ; preds = %52
  %70 = load %struct.bio*, %struct.bio** %7, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BIO_DISCARD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %78 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %79 = load %struct.bio*, %struct.bio** %7, align 8
  %80 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @nvme_submit_discard(%struct.nvme_queue* %77, %struct.nvme_ns* %78, %struct.bio* %79, %struct.nvme_iod* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %245

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %257

88:                                               ; preds = %69
  %89 = load %struct.bio*, %struct.bio** %7, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @REQ_FLUSH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %100 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @nvme_submit_flush(%struct.nvme_queue* %99, %struct.nvme_ns* %100, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %257

103:                                              ; preds = %95, %88
  store i32 0, i32* %14, align 4
  %104 = load %struct.bio*, %struct.bio** %7, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @REQ_FUA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @NVME_RW_FUA, align 4
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.bio*, %struct.bio** %7, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %119 = load i32, i32* @BIO_RW_AHEAD, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @NVME_RW_LR, align 4
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %123, %114
  store i32 0, i32* %15, align 4
  %128 = load %struct.bio*, %struct.bio** %7, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BIO_RW_AHEAD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @NVME_RW_DSM_FREQ_PREFETCH, align 4
  %136 = load i32, i32* %15, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %140 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %139, i32 0, i32 4
  %141 = load %struct.nvme_command*, %struct.nvme_command** %140, align 8
  %142 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %143 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %141, i64 %144
  store %struct.nvme_command* %145, %struct.nvme_command** %8, align 8
  %146 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %147 = call i32 @memset(%struct.nvme_command* %146, i32 0, i32 64)
  %148 = load %struct.bio*, %struct.bio** %7, align 8
  %149 = call i64 @bio_data_dir(%struct.bio* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %138
  %152 = load i32, i32* @nvme_cmd_write, align 4
  %153 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %154 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 6
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %156, i32* %10, align 4
  br label %163

157:                                              ; preds = %138
  %158 = load i32, i32* @nvme_cmd_read, align 4
  %159 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %160 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 6
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %157, %151
  %164 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %165 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %166 = load %struct.bio*, %struct.bio** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @nvme_map_bio(%struct.nvme_queue* %164, %struct.nvme_iod* %165, %struct.bio* %166, i32 %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %245

173:                                              ; preds = %163
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %177 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %180 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %184 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 5
  store i8* %182, i8** %185, align 8
  %186 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %187 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %190 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %189, i32 0, i32 1
  %191 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call i32 @nvme_setup_prps(i32 %188, i32* %190, %struct.nvme_iod* %191, i32 %192, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %196 = load %struct.bio*, %struct.bio** %7, align 8
  %197 = getelementptr inbounds %struct.bio, %struct.bio* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @nvme_block_nr(%struct.nvme_ns* %195, i32 %198)
  %200 = call i32 @cpu_to_le64(i32 %199)
  %201 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %202 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %206 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = ashr i32 %204, %207
  %209 = sub nsw i32 %208, 1
  %210 = call i8* @cpu_to_le16(i32 %209)
  %211 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %212 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 3
  store i8* %210, i8** %213, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i8* @cpu_to_le16(i32 %214)
  %216 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %217 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  store i8* %215, i8** %218, align 8
  %219 = load i32, i32* %15, align 4
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %222 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  store i8* %220, i8** %223, align 8
  %224 = load %struct.bio*, %struct.bio** %7, align 8
  %225 = call i32 @nvme_start_io_acct(%struct.bio* %224)
  %226 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %227 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %231 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %173
  %235 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %236 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %235, i32 0, i32 0
  store i64 0, i64* %236, align 8
  br label %237

237:                                              ; preds = %234, %173
  %238 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %239 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %242 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @writel(i64 %240, i32 %243)
  store i32 0, i32* %4, align 4
  br label %257

245:                                              ; preds = %172, %85
  %246 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @free_cmdid(%struct.nvme_queue* %246, i32 %247, i32* null)
  br label %249

249:                                              ; preds = %245, %68
  %250 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %251 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %254 = call i32 @nvme_free_iod(i32 %252, %struct.nvme_iod* %253)
  br label %255

255:                                              ; preds = %249, %51
  %256 = load i32, i32* %13, align 4
  store i32 %256, i32* %4, align 4
  br label %257

257:                                              ; preds = %255, %237, %98, %86, %37
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @bio_phys_segments(i32, %struct.bio*) #1

declare dso_local i32 @nvme_submit_flush_data(%struct.nvme_queue*, %struct.nvme_ns*) #1

declare dso_local %struct.nvme_iod* @nvme_alloc_iod(i32, i32, i32) #1

declare dso_local i32 @alloc_cmdid(%struct.nvme_queue*, %struct.nvme_iod*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_submit_discard(%struct.nvme_queue*, %struct.nvme_ns*, %struct.bio*, %struct.nvme_iod*, i32) #1

declare dso_local i32 @nvme_submit_flush(%struct.nvme_queue*, %struct.nvme_ns*, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @nvme_map_bio(%struct.nvme_queue*, %struct.nvme_iod*, %struct.bio*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nvme_setup_prps(i32, i32*, %struct.nvme_iod*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_block_nr(%struct.nvme_ns*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nvme_start_io_acct(%struct.bio*) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @free_cmdid(%struct.nvme_queue*, i32, i32*) #1

declare dso_local i32 @nvme_free_iod(i32, %struct.nvme_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
