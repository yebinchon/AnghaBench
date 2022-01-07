; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_13__*, %struct.TYPE_12__, i32, i32* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i8*, i64, i32*, i32, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__**, i64, i64, %struct.scsi_cmnd* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, %struct.scsi_cmnd* }

@NSP32_DEBUG_QUEUECOMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"enter. target: 0x%x LUN: 0x%x cmnd: 0x%x cmndlen: 0x%x use_sg: 0x%x reqbuf: 0x%lx reqlen: 0x%x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Currentsc != NULL. Cancel this command request\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"terget==host???\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@MAX_LUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"no more lun\00", align 1
@CHECK_CONDITION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"SGT fail\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@SDTR_DONE = common dso_local global i32 0, align 4
@SDTR_INITIATOR = common dso_local global i32 0, align 4
@SDTR_TARGET = common dso_local global i32 0, align 4
@trans_mode = common dso_local global i64 0, align 8
@ASYNC_MODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"SDTR: entry: %d start_period: 0x%x offset: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SDTR_INITIATOR: fall back to async\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Unknown SDTR from target is reached, fall back to async.\00", align 1
@NSP32_DEBUG_TARGETFLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"target: %d sync_flag: 0x%x syncreg: 0x%x ackwidth: 0x%x\00", align 1
@auto_param = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"selection fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @nsp32_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %39)
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = call i64 @scsi_sglist(%struct.scsi_cmnd* %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %43)
  %45 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %20, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30, i32 %35, i32 %38, i32 %40, i64 %42, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %47, align 8
  %49 = icmp ne %struct.scsi_cmnd* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %2
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = call i32 @nsp32_msg(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %54, align 8
  %55 = load i32, i32* @DID_NO_CONNECT, align 4
  %56 = shl i32 %55, 16
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %59(%struct.scsi_cmnd* %60)
  store i32 0, i32* %3, align 4
  br label %337

61:                                               ; preds = %2
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = call i64 @scmd_id(%struct.scsi_cmnd* %62)
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %63, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %74 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @DID_BAD_TARGET, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %79(%struct.scsi_cmnd* %80)
  store i32 0, i32* %3, align 4
  br label %337

81:                                               ; preds = %61
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MAX_LUN, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %91 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @DID_BAD_TARGET, align 4
  %93 = shl i32 %92, 16
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %96(%struct.scsi_cmnd* %97)
  store i32 0, i32* %3, align 4
  br label %337

98:                                               ; preds = %81
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = call i32 @show_command(%struct.scsi_cmnd* %99)
  %101 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %101, void (%struct.scsi_cmnd*)** %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 8
  store %struct.scsi_cmnd* %104, %struct.scsi_cmnd** %106, align 8
  %107 = load i32, i32* @CHECK_CONDITION, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  store i32 %107, i32* %110, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %116 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %115)
  %117 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %114, i32 %116)
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = call i64 @scsi_sglist(%struct.scsi_cmnd* %118)
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %125 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %124)
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 7
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 6
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %140, align 8
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 2
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %141, i64 %146
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %153
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %8, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store %struct.scsi_cmnd* %155, %struct.scsi_cmnd** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %165, align 8
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 2
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %174 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %173, i32 0, i32 2
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %181 = call i32 @nsp32_setup_sg_table(%struct.scsi_cmnd* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @FALSE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %98
  %186 = load i32, i32* @KERN_ERR, align 4
  %187 = call i32 @nsp32_msg(i32 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i32, i32* @DID_ERROR, align 4
  %189 = shl i32 %188, 16
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %193 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %192)
  store i32 0, i32* %3, align 4
  br label %337

194:                                              ; preds = %98
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = call i32 @nsp32_build_identify(%struct.scsi_cmnd* %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %201 = call i64 @scmd_id(%struct.scsi_cmnd* %200)
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i64 %201
  store %struct.TYPE_14__* %202, %struct.TYPE_14__** %7, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %205, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @SDTR_DONE, align 4
  %210 = load i32, i32* @SDTR_INITIATOR, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @SDTR_TARGET, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %208, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %252, label %216

216:                                              ; preds = %194
  %217 = load i64, i64* @trans_mode, align 8
  %218 = load i64, i64* @ASYNC_MODE, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %223 = call i32 @nsp32_set_max_sync(%struct.TYPE_16__* %221, %struct.TYPE_14__* %222, i8* %10, i8* %11)
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %225 = load i8, i8* %10, align 1
  %226 = load i8, i8* %11, align 1
  %227 = call i32 @nsp32_build_sdtr(%struct.scsi_cmnd* %224, i8 zeroext %225, i8 zeroext %226)
  %228 = load i32, i32* @SDTR_INITIATOR, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %242

233:                                              ; preds = %216
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %236 = call i32 @nsp32_set_async(%struct.TYPE_16__* %234, %struct.TYPE_14__* %235)
  %237 = load i32, i32* @SDTR_DONE, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %233, %220
  %243 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i8, i8* %10, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8, i8* %11, align 1
  %250 = zext i8 %249 to i32
  %251 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %243, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %246, i32 %248, i32 %250)
  br label %302

252:                                              ; preds = %194
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @SDTR_INITIATOR, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %252
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %262 = call i32 @nsp32_set_async(%struct.TYPE_16__* %260, %struct.TYPE_14__* %261)
  %263 = load i32, i32* @SDTR_INITIATOR, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* @SDTR_DONE, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %275 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %274, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %301

276:                                              ; preds = %252
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @SDTR_TARGET, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %276
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %286 = call i32 @nsp32_set_async(%struct.TYPE_16__* %284, %struct.TYPE_14__* %285)
  %287 = load i32, i32* @SDTR_TARGET, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* @SDTR_DONE, align 4
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %299 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %298, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %300

300:                                              ; preds = %283, %276
  br label %301

301:                                              ; preds = %300, %259
  br label %302

302:                                              ; preds = %301, %242
  %303 = load i32, i32* @NSP32_DEBUG_TARGETFLAG, align 4
  %304 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %305 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %304, i32 0, i32 2
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %303, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %308, i32 %311, i32 %314, i32 %317)
  %319 = load i64, i64* @auto_param, align 8
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %302
  %322 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %323 = call i32 @nsp32_selection_autopara(%struct.scsi_cmnd* %322)
  store i32 %323, i32* %9, align 4
  br label %327

324:                                              ; preds = %302
  %325 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %326 = call i32 @nsp32_selection_autoscsi(%struct.scsi_cmnd* %325)
  store i32 %326, i32* %9, align 4
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* @TRUE, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = load i32, i32* @NSP32_DEBUG_QUEUECOMMAND, align 4
  %333 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %334 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %335 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %334)
  br label %336

336:                                              ; preds = %331, %327
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %336, %185, %89, %72, %50
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @show_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @nsp32_setup_sg_table(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_build_identify(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_set_max_sync(%struct.TYPE_16__*, %struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @nsp32_build_sdtr(%struct.scsi_cmnd*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @nsp32_selection_autopara(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_selection_autoscsi(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
