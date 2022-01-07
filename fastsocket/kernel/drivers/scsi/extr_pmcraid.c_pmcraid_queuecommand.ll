; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32, i64, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.pmcraid_resource_entry*, %struct.TYPE_8__* }
%struct.pmcraid_resource_entry = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.pmcraid_instance = type { i64, i32, %struct.TYPE_12__*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pmcraid_ioarcb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pmcraid_cmd = type { i32, %struct.TYPE_11__*, %struct.scsi_cmnd* }
%struct.TYPE_11__ = type { %struct.pmcraid_ioarcb }

@DID_OK = common dso_local global i32 0, align 4
@IOA_STATE_DEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"IOA is dead, but queuecommand is scheduled\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SYNC_CACHE(0x35), completing in driver itself\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"free command block is not available\0A\00", align 1
@REQ_TYPE_SCSI = common dso_local global i32 0, align 4
@pmcraid_io_done = common dso_local global i32 0, align 4
@INHIBIT_UL_CHECK = common dso_local global i32 0, align 4
@SYNC_COMPLETE = common dso_local global i32 0, align 4
@NO_LINK_DESCS = common dso_local global i32 0, align 4
@DELAY_AFTER_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"command (%d) CDB[0] = %x for %x:%x:%x:%x\0A\00", align 1
@PMCRAID_VSET_BUS_ID = common dso_local global i32 0, align 4
@PMCRAID_PHYS_BUS_ID = common dso_local global i32 0, align 4
@PMCRAID_FW_VERSION_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"queuecommand could not build ioadl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @pmcraid_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.pmcraid_instance*, align 8
  %7 = alloca %struct.pmcraid_resource_entry*, align 8
  %8 = alloca %struct.pmcraid_ioarcb*, align 8
  %9 = alloca %struct.pmcraid_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 5
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.pmcraid_instance*
  store %struct.pmcraid_instance* %19, %struct.pmcraid_instance** %6, align 8
  %20 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %21 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %26, void (%struct.scsi_cmnd*)** %28, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 5
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %32, align 8
  store %struct.pmcraid_resource_entry* %33, %struct.pmcraid_resource_entry** %7, align 8
  %34 = load i32, i32* @DID_OK, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IOA_STATE_DEAD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %2
  %44 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @DID_NO_CONNECT, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %50, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %51(%struct.scsi_cmnd* %52)
  store i32 0, i32* %3, align 4
  br label %281

53:                                               ; preds = %2
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %281

60:                                               ; preds = %53
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SYNCHRONIZE_CACHE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %71, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %72(%struct.scsi_cmnd* %73)
  store i32 0, i32* %3, align 4
  br label %281

74:                                               ; preds = %60
  %75 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %76 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %75)
  store %struct.pmcraid_cmd* %76, %struct.pmcraid_cmd** %9, align 8
  %77 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %78 = icmp eq %struct.pmcraid_cmd* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i32 @pmcraid_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %81, i32* %3, align 4
  br label %281

82:                                               ; preds = %74
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %85 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %84, i32 0, i32 2
  store %struct.scsi_cmnd* %83, %struct.scsi_cmnd** %85, align 8
  %86 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %87 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %89, %struct.pmcraid_ioarcb** %8, align 8
  %90 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %91 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i32 %92, i32* %95, i32 %98)
  %100 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %101 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %105 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @REQ_TYPE_SCSI, align 4
  %107 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %108 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %110 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %109, i32 0, i32 3
  %111 = call i32 @atomic_add_return(i32 1, i32* %110)
  %112 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %113 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = srem i32 %111, %114
  %116 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %117 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @pmcraid_io_done, align 4
  %119 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %120 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %122 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %121, i32 0, i32 0
  %123 = bitcast %struct.TYPE_13__* %122 to { i64, i64 }*
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @RES_IS_GSCSI(i64 %125, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %82
  %131 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %132 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %131, i32 0, i32 0
  %133 = bitcast %struct.TYPE_13__* %132 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @RES_IS_VSET(i64 %135, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %192

140:                                              ; preds = %130, %82
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @INHIBIT_UL_CHECK, align 4
  %147 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %148 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %153 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i32, i32* @SYNC_COMPLETE, align 4
  %158 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %159 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %163 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %156, %151
  %165 = load i32, i32* @NO_LINK_DESCS, align 4
  %166 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %167 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %171 = call i32 @pmcraid_task_attributes(%struct.scsi_cmnd* %170)
  %172 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %173 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %177 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %176, i32 0, i32 0
  %178 = bitcast %struct.TYPE_13__* %177 to { i64, i64 }*
  %179 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %178, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @RES_IS_GSCSI(i64 %180, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %164
  %186 = load i32, i32* @DELAY_AFTER_RESET, align 4
  %187 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %188 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %164
  br label %192

192:                                              ; preds = %191, %130
  %193 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %194 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %195 = call i32 @pmcraid_build_ioadl(%struct.pmcraid_instance* %193, %struct.pmcraid_cmd* %194)
  store i32 %195, i32* %11, align 4
  %196 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %197 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le32_to_cpu(i32 %198)
  %200 = ashr i32 %199, 2
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %207 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %206, i32 0, i32 2
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %212 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %211, i32 0, i32 0
  %213 = bitcast %struct.TYPE_13__* %212 to { i64, i64 }*
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %213, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @RES_IS_VSET(i64 %215, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %192
  %221 = load i32, i32* @PMCRAID_VSET_BUS_ID, align 4
  br label %224

222:                                              ; preds = %192
  %223 = load i32, i32* @PMCRAID_PHYS_BUS_ID, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  %226 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %227 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %226, i32 0, i32 0
  %228 = bitcast %struct.TYPE_13__* %227 to { i64, i64 }*
  %229 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %228, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @RES_IS_VSET(i64 %230, i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %224
  %236 = load i64, i64* %10, align 8
  %237 = load i64, i64* @PMCRAID_FW_VERSION_1, align 8
  %238 = icmp sle i64 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %241 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  br label %250

244:                                              ; preds = %235
  %245 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %246 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %244, %239
  %251 = phi i32 [ %243, %239 ], [ %249, %244 ]
  br label %258

252:                                              ; preds = %224
  %253 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %254 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @RES_TARGET(i32 %256)
  br label %258

258:                                              ; preds = %252, %250
  %259 = phi i32 [ %251, %250 ], [ %257, %252 ]
  %260 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %261 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @RES_LUN(i32 %263)
  %265 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %205, i32 %210, i32 %225, i32 %259, i32 %264)
  %266 = load i32, i32* %11, align 4
  %267 = icmp eq i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i64 @likely(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %258
  %272 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %273 = call i32 @_pmcraid_fire_command(%struct.pmcraid_cmd* %272)
  br label %279

274:                                              ; preds = %258
  %275 = call i32 @pmcraid_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %276 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %277 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %276)
  %278 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %274, %271
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %79, %68, %58, %43
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @pmcraid_info(i8*, ...) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i64 @RES_IS_GSCSI(i64, i64) #1

declare dso_local i64 @RES_IS_VSET(i64, i64) #1

declare dso_local i32 @pmcraid_task_attributes(%struct.scsi_cmnd*) #1

declare dso_local i32 @pmcraid_build_ioadl(%struct.pmcraid_instance*, %struct.pmcraid_cmd*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RES_TARGET(i32) #1

declare dso_local i32 @RES_LUN(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @_pmcraid_fire_command(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
