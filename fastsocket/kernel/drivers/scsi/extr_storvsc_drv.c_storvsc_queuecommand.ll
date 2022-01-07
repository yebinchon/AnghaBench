; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i8*, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.stor_mem_pools*, %struct.Scsi_Host* }
%struct.stor_mem_pools = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.hv_host_device = type { i32, %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.storvsc_cmd_request = type { i32, %struct.scatterlist*, %struct.TYPE_8__, i32, %struct.TYPE_5__, %struct.scsi_cmnd* }
%struct.scatterlist = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.vmscsi_request }
%struct.vmscsi_request = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@WRITE_TYPE = common dso_local global i64 0, align 8
@SRB_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@SRB_FLAGS_QUEUE_ACTION_ENABLE = common dso_local global i32 0, align 4
@SRB_FLAGS_DISABLE_SYNCH_TRANSFER = common dso_local global i32 0, align 4
@READ_TYPE = common dso_local global i64 0, align 8
@SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@UNKNOWN_TYPE = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @storvsc_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hv_host_device*, align 8
  %9 = alloca %struct.hv_device*, align 8
  %10 = alloca %struct.storvsc_cmd_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vmscsi_request*, align 8
  %16 = alloca %struct.stor_mem_pools*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %20, align 8
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %6, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %23 = call %struct.hv_host_device* @shost_priv(%struct.Scsi_Host* %22)
  store %struct.hv_host_device* %23, %struct.hv_host_device** %8, align 8
  %24 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %25 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %24, i32 0, i32 1
  %26 = load %struct.hv_device*, %struct.hv_device** %25, align 8
  store %struct.hv_device* %26, %struct.hv_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %30, align 8
  store %struct.stor_mem_pools* %31, %struct.stor_mem_pools** %16, align 8
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %32, void (%struct.scsi_cmnd*)** %34, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = call i32 @storvsc_scsi_cmd_ok(%struct.scsi_cmnd* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %41(%struct.scsi_cmnd* %42)
  store i32 0, i32* %3, align 4
  br label %316

43:                                               ; preds = %2
  store i32 96, i32* %11, align 4
  %44 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %16, align 8
  %45 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.storvsc_cmd_request* @mempool_alloc(i32 %46, i32 %47)
  store %struct.storvsc_cmd_request* %48, %struct.storvsc_cmd_request** %10, align 8
  %49 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %50 = icmp ne %struct.storvsc_cmd_request* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %316

53:                                               ; preds = %43
  %54 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %55 = call i32 @memset(%struct.storvsc_cmd_request* %54, i32 0, i32 96)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %58 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %57, i32 0, i32 5
  store %struct.scsi_cmnd* %56, %struct.scsi_cmnd** %58, align 8
  %59 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %60 = bitcast %struct.storvsc_cmd_request* %59 to i8*
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %64 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store %struct.vmscsi_request* %65, %struct.vmscsi_request** %15, align 8
  %66 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %67 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 60, i32* %68, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %108 [
    i32 128, label %72
    i32 129, label %90
  ]

72:                                               ; preds = %53
  %73 = load i64, i64* @WRITE_TYPE, align 8
  %74 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %75 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @SRB_FLAGS_DATA_OUT, align 4
  %77 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %78 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @SRB_FLAGS_QUEUE_ACTION_ENABLE, align 4
  %83 = load i32, i32* @SRB_FLAGS_DISABLE_SYNCH_TRANSFER, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %86 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %115

90:                                               ; preds = %53
  %91 = load i64, i64* @READ_TYPE, align 8
  %92 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %93 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @SRB_FLAGS_DATA_IN, align 4
  %95 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %96 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @SRB_FLAGS_QUEUE_ACTION_ENABLE, align 4
  %101 = load i32, i32* @SRB_FLAGS_DISABLE_SYNCH_TRANSFER, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %104 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %115

108:                                              ; preds = %53
  %109 = load i64, i64* @UNKNOWN_TYPE, align 8
  %110 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %111 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %113 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %90, %72
  %116 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %117 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %120 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 6
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %127 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 6
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %134 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 6
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %141 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %146 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %148 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %154 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i32 %149, i32 %152, i32 %155)
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %161 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %163 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %162)
  %164 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %165 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %168 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %258

170:                                              ; preds = %115
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %172 = call i64 @scsi_sglist(%struct.scsi_cmnd* %171)
  %173 = inttoptr i64 %172 to %struct.scatterlist*
  store %struct.scatterlist* %173, %struct.scatterlist** %13, align 8
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %175 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %174)
  store i32 %175, i32* %14, align 4
  %176 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %178 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %177)
  %179 = call i32 @do_bounce_buffer(%struct.scatterlist* %176, i32 %178)
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %181, label %228

181:                                              ; preds = %170
  %182 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %183)
  %185 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %186 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %185)
  %187 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %188 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call %struct.scatterlist* @create_bounce_buffer(%struct.scatterlist* %182, i32 %184, i32 %186, i64 %189)
  %191 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %192 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %191, i32 0, i32 1
  store %struct.scatterlist* %190, %struct.scatterlist** %192, align 8
  %193 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %194 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %193, i32 0, i32 1
  %195 = load %struct.scatterlist*, %struct.scatterlist** %194, align 8
  %196 = icmp ne %struct.scatterlist* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %181
  %198 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %198, i32* %7, align 4
  br label %307

199:                                              ; preds = %181
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %201 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %200)
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = call i32 @ALIGN(i32 %201, i32 %202)
  %204 = load i32, i32* @PAGE_SHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %207 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.vmscsi_request*, %struct.vmscsi_request** %15, align 8
  %209 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @WRITE_TYPE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %199
  %214 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %215 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %216 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %215, i32 0, i32 1
  %217 = load %struct.scatterlist*, %struct.scatterlist** %216, align 8
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %219 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %218)
  %220 = call i32 @copy_to_bounce_buffer(%struct.scatterlist* %214, %struct.scatterlist* %217, i32 %219)
  br label %221

221:                                              ; preds = %213, %199
  %222 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %223 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %222, i32 0, i32 1
  %224 = load %struct.scatterlist*, %struct.scatterlist** %223, align 8
  store %struct.scatterlist* %224, %struct.scatterlist** %13, align 8
  %225 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %226 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %221, %170
  %229 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %230 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %229, i64 0
  %231 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %234 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 8
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %254, %228
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %236
  %241 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %241, i64 %243
  %245 = call i32 @sg_page(%struct.scatterlist* %244)
  %246 = call i32 @page_to_pfn(i32 %245)
  %247 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %248 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %246, i32* %253, align 4
  br label %254

254:                                              ; preds = %240
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %236

257:                                              ; preds = %236
  br label %283

258:                                              ; preds = %115
  %259 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %260 = call i64 @scsi_sglist(%struct.scsi_cmnd* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %258
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = call i64 @scsi_sglist(%struct.scsi_cmnd* %263)
  %265 = call i32 @virt_to_phys(i64 %264)
  %266 = load i32, i32* @PAGE_SIZE, align 4
  %267 = sub nsw i32 %266, 1
  %268 = and i32 %265, %267
  %269 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %270 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 8
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %273 = call i64 @scsi_sglist(%struct.scsi_cmnd* %272)
  %274 = call i32 @virt_to_phys(i64 %273)
  %275 = load i32, i32* @PAGE_SHIFT, align 4
  %276 = ashr i32 %274, %275
  %277 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %278 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %276, i32* %281, align 4
  br label %282

282:                                              ; preds = %262, %258
  br label %283

283:                                              ; preds = %282, %257
  %284 = load %struct.hv_device*, %struct.hv_device** %9, align 8
  %285 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %286 = call i32 @storvsc_do_io(%struct.hv_device* %284, %struct.storvsc_cmd_request* %285)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @EAGAIN, align 4
  %289 = sub nsw i32 0, %288
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %306

291:                                              ; preds = %283
  %292 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %293 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %298 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %297, i32 0, i32 1
  %299 = load %struct.scatterlist*, %struct.scatterlist** %298, align 8
  %300 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %301 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @destroy_bounce_buffer(%struct.scatterlist* %299, i32 %302)
  %304 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %304, i32* %7, align 4
  br label %307

305:                                              ; preds = %291
  br label %306

306:                                              ; preds = %305, %283
  store i32 0, i32* %3, align 4
  br label %316

307:                                              ; preds = %296, %197
  %308 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %309 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %16, align 8
  %310 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @mempool_free(%struct.storvsc_cmd_request* %308, i32 %311)
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 1
  store i8* null, i8** %314, align 8
  %315 = load i32, i32* %7, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %307, %306, %51, %38
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local %struct.hv_host_device* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @storvsc_scsi_cmd_ok(%struct.scsi_cmnd*) #1

declare dso_local %struct.storvsc_cmd_request* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.storvsc_cmd_request*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @do_bounce_buffer(%struct.scatterlist*, i32) #1

declare dso_local %struct.scatterlist* @create_bounce_buffer(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @copy_to_bounce_buffer(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @storvsc_do_io(%struct.hv_device*, %struct.storvsc_cmd_request*) #1

declare dso_local i32 @destroy_bounce_buffer(%struct.scatterlist*, i32) #1

declare dso_local i32 @mempool_free(%struct.storvsc_cmd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
