; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }
%struct.ctlr_info = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.CommandList = type { %struct.TYPE_9__*, i64, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"ABORT REQUEST FAILED, Controller lookup failed.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@HPSATMF_PHYS_TASK_ABORT = common dso_local global i32 0, align 4
@HPSATMF_LOG_TASK_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ABORT REQUEST on C%d:B%d:T%d:L%d \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s FAILED, Device lookup failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s FAILED, Command to abort is NULL.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Tag:0x%08x:%08x \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Command:0x%x SN:0x%lx \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Abort request on C%d:B%d:T%d:L%d\0A\00", align 1
@CMD_ABORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"%s Request SUCCEEDED (driver queue).\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"%s Request FAILED (not known to driver).\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s Request FAILED.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"FAILED abort on device C%d:B%d:T%d:L%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s REQUEST SUCCEEDED.\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"%s FAILED. Aborted command has not completed after %d seconds.\0A\00", align 1
@ABORT_COMPLETE_WAIT_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @hpsa_eh_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca %struct.CommandList*, align 8
  %9 = alloca %struct.CommandList*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = call %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_12__* %15)
  store %struct.ctlr_info* %16, %struct.ctlr_info** %6, align 8
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %18 = icmp eq %struct.ctlr_info* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @FAILED, align 4
  store i32 %23, i32* %2, align 4
  br label %279

24:                                               ; preds = %1
  %25 = load i32, i32* @HPSATMF_PHYS_TASK_ABORT, align 4
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @HPSATMF_LOG_TASK_ABORT, align 4
  %33 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %34 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @FAILED, align 4
  store i32 %39, i32* %2, align 4
  br label %279

40:                                               ; preds = %31, %24
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 256)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %48 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 3
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 (i8*, i8*, i32, i32, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %75, align 8
  store %struct.hpsa_scsi_dev_t* %76, %struct.hpsa_scsi_dev_t** %7, align 8
  %77 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %78 = icmp ne %struct.hpsa_scsi_dev_t* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %40
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @FAILED, align 4
  store i32 %86, i32* %2, align 4
  br label %279

87:                                               ; preds = %40
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.CommandList*
  store %struct.CommandList* %91, %struct.CommandList** %8, align 8
  %92 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %93 = icmp eq %struct.CommandList* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %96 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @FAILED, align 4
  store i32 %101, i32* %2, align 4
  br label %279

102:                                              ; preds = %87
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %108 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %113 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 (i8*, i8*, i32, i32, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  %122 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %123 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %125, %struct.scsi_cmnd** %10, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %127 = icmp ne %struct.scsi_cmnd* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %102
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 (i8*, i8*, i32, i32, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %128, %102
  %147 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %148 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %152 = call i32 @dev_dbg(i32* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %151)
  %153 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %154 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %158 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %157, i32 0, i32 3
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %163 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %166 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %169 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32*, i8*, ...) @dev_warn(i32* %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %161, i32 %164, i32 %167, i32 %170)
  %172 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %174 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %175 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %174, i32 0, i32 4
  %176 = call %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info* %172, %struct.scsi_cmnd* %173, i32* %175)
  store %struct.CommandList* %176, %struct.CommandList** %9, align 8
  %177 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %178 = icmp ne %struct.CommandList* %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %146
  %180 = load i32, i32* @CMD_ABORTED, align 4
  %181 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %182 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %181, i32 0, i32 0
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 4
  %185 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %186 = call i32 @finish_cmd(%struct.CommandList* %185)
  %187 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %188 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %192 = call i32 @dev_info(i32* %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %191)
  %193 = load i32, i32* @SUCCESS, align 4
  store i32 %193, i32* %2, align 4
  br label %279

194:                                              ; preds = %146
  %195 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %197 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %198 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %197, i32 0, i32 2
  %199 = call %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info* %195, %struct.scsi_cmnd* %196, i32* %198)
  store %struct.CommandList* %199, %struct.CommandList** %9, align 8
  %200 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %201 = icmp ne %struct.CommandList* %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %194
  %203 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %204 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %203, i32 0, i32 1
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %208 = call i32 @dev_dbg(i32* %206, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %207)
  %209 = load i32, i32* @SUCCESS, align 4
  store i32 %209, i32* %2, align 4
  br label %279

210:                                              ; preds = %194
  %211 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %212 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %213 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %216 = call i32 @hpsa_send_abort_both_ways(%struct.ctlr_info* %211, i32 %214, %struct.CommandList* %215)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %210
  %220 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %221 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %225 = call i32 @dev_dbg(i32* %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %224)
  %226 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %227 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %226, i32 0, i32 1
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %231 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %230, i32 0, i32 3
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %236 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %239 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %242 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32*, i8*, ...) @dev_warn(i32* %229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %234, i32 %237, i32 %240, i32 %243)
  %245 = load i32, i32* @FAILED, align 4
  store i32 %245, i32* %2, align 4
  br label %279

246:                                              ; preds = %210
  %247 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %248 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %247, i32 0, i32 1
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %252 = call i32 @dev_info(i32* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %251)
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %268, %246
  %254 = load i32, i32* %4, align 4
  %255 = icmp slt i32 %254, 300
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %259 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %260 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %259, i32 0, i32 2
  %261 = call %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info* %257, %struct.scsi_cmnd* %258, i32* %260)
  store %struct.CommandList* %261, %struct.CommandList** %9, align 8
  %262 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %263 = icmp ne %struct.CommandList* %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %256
  %265 = load i32, i32* @SUCCESS, align 4
  store i32 %265, i32* %2, align 4
  br label %279

266:                                              ; preds = %256
  %267 = call i32 @msleep(i32 100)
  br label %268

268:                                              ; preds = %266
  %269 = load i32, i32* %4, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %4, align 4
  br label %253

271:                                              ; preds = %253
  %272 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %273 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %272, i32 0, i32 1
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %277 = call i32 (i32*, i8*, ...) @dev_warn(i32* %275, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), i8* %276, i32 30)
  %278 = load i32, i32* @FAILED, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %271, %264, %219, %202, %179, %94, %79, %38, %22
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_12__*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info*, %struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @finish_cmd(%struct.CommandList*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @hpsa_send_abort_both_ways(%struct.ctlr_info*, i32, %struct.CommandList*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
