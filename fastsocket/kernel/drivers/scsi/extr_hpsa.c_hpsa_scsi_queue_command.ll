; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_queue_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, i8*, i32, i8*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i8* }
%struct.ctlr_info = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.CommandList = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.scsi_cmnd*, i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cmd_alloc returned NULL!\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@CMD_SCSI = common dso_local global i32 0, align 4
@DIRECT_LOOKUP_SHIFT = common dso_local global i32 0, align 4
@DIRECT_LOOKUP_BIT = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@ATTR_SIMPLE = common dso_local global i32 0, align 4
@XFER_WRITE = common dso_local global i32 0, align 4
@XFER_READ = common dso_local global i32 0, align 4
@XFER_NONE = common dso_local global i32 0, align 4
@XFER_RSVD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown data direction: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @hpsa_scsi_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_queue_command(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.CommandList*, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 6
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = call %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_14__* %13)
  store %struct.ctlr_info* %14, %struct.ctlr_info** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 6
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %18, align 8
  store %struct.hpsa_scsi_dev_t* %19, %struct.hpsa_scsi_dev_t** %7, align 8
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %21 = icmp ne %struct.hpsa_scsi_dev_t* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @DID_NO_CONNECT, align 4
  %24 = shl i32 %23, 16
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %27(%struct.scsi_cmnd* %28)
  store i32 0, i32* %3, align 4
  br label %206

29:                                               ; preds = %2
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @memcpy(i8* %30, i8* %33, i32 8)
  %35 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %36 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %40 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %29
  %45 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %46 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %45, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* @DID_ERROR, align 4
  %50 = shl i32 %49, 16
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %53(%struct.scsi_cmnd* %54)
  store i32 0, i32* %3, align 4
  br label %206

55:                                               ; preds = %29
  %56 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %57 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %56, i32 0, i32 1
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %61 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %60)
  store %struct.CommandList* %61, %struct.CommandList** %9, align 8
  %62 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %63 = icmp eq %struct.CommandList* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %66 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %70, i32* %3, align 4
  br label %206

71:                                               ; preds = %55
  %72 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %72, void (%struct.scsi_cmnd*)** %74, align 8
  %75 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %76 = bitcast %struct.CommandList* %75 to i8*
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @CMD_SCSI, align 4
  %80 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %81 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %84 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %83, i32 0, i32 3
  store %struct.scsi_cmnd* %82, %struct.scsi_cmnd** %84, align 8
  %85 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %86 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %89 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %95 = call i32 @memcpy(i8* %93, i8* %94, i32 8)
  %96 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %97 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DIRECT_LOOKUP_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %102 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @DIRECT_LOOKUP_BIT, align 4
  %106 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %107 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 8
  %112 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %113 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %116 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @memset(i8* %118, i32 0, i32 8)
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp ugt i64 %123, 8
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %131 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %134 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %138 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i8* %136, i8* %139, i32 %142)
  %144 = load i32, i32* @TYPE_CMD, align 4
  %145 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %146 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* @ATTR_SIMPLE, align 4
  %150 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %151 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %181 [
    i32 128, label %157
    i32 130, label %163
    i32 129, label %169
    i32 131, label %175
  ]

157:                                              ; preds = %71
  %158 = load i32, i32* @XFER_WRITE, align 4
  %159 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %160 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 4
  br label %191

163:                                              ; preds = %71
  %164 = load i32, i32* @XFER_READ, align 4
  %165 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %166 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 4
  br label %191

169:                                              ; preds = %71
  %170 = load i32, i32* @XFER_NONE, align 4
  %171 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %172 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 4
  br label %191

175:                                              ; preds = %71
  %176 = load i32, i32* @XFER_RSVD, align 4
  %177 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %178 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 4
  br label %191

181:                                              ; preds = %71
  %182 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %183 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_err(i32* %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = call i32 (...) @BUG()
  br label %191

191:                                              ; preds = %181, %175, %169, %163, %157
  %192 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %193 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %194 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %195 = call i64 @hpsa_scatter_gather(%struct.ctlr_info* %192, %struct.CommandList* %193, %struct.scsi_cmnd* %194)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %199 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %200 = call i32 @cmd_free(%struct.ctlr_info* %198, %struct.CommandList* %199)
  %201 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %201, i32* %3, align 4
  br label %206

202:                                              ; preds = %191
  %203 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %204 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %205 = call i32 @enqueue_cmd_and_start_io(%struct.ctlr_info* %203, %struct.CommandList* %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %197, %64, %44, %22
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @hpsa_scatter_gather(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @enqueue_cmd_and_start_io(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
