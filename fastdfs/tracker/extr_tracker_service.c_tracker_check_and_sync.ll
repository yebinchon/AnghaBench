; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_service.c_tracker_check_and_sync.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_service.c_tracker_check_and_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.fast_task_info = type { i32, i8*, i64 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i64, i32, i32, %struct.TYPE_16__**, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@g_if_leader_self = common dso_local global i64 0, align 8
@g_tracker_leader_chg_count = common dso_local global i64 0, align 8
@FDFS_CHANGE_FLAG_TRACKER_LEADER = common dso_local global i8 0, align 1
@g_tracker_servers = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@FDFS_STORAGE_ID_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IP_ADDRESS_SIZE = common dso_local global i32 0, align 4
@FDFS_CHANGE_FLAG_TRUNK_SERVER = common dso_local global i8 0, align 1
@FDFS_CHANGE_FLAG_GROUP_SERVER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*, i32)* @tracker_check_and_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_check_and_sync(%struct.fast_task_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fast_task_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.fast_task_info* %0, %struct.fast_task_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.fast_task_info*, %struct.fast_task_info** %4, align 8
  %17 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = icmp eq %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %2
  %28 = load %struct.fast_task_info*, %struct.fast_task_info** %4, align 8
  %29 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %284

31:                                               ; preds = %22
  %32 = load %struct.fast_task_info*, %struct.fast_task_info** %4, align 8
  %33 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  store i8* %36, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  store i8 0, i8* %38, align 1
  %39 = load i64, i64* @g_if_leader_self, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %272

41:                                               ; preds = %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @g_tracker_leader_chg_count, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %41
  %49 = load i8, i8* @FDFS_CHANGE_FLAG_TRACKER_LEADER, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 %53, %50
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load i8*, i8** %12, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %9, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @memset(i8* %58, i32 0, i32 16)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_tracker_servers, i32 0, i32 0), align 8
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %48
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_tracker_servers, i32 0, i32 1), align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %66
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %14, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %15, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FDFS_STORAGE_ID_MAX_SIZE, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @snprintf(i32 %73, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @IP_ADDRESS_SIZE, align 4
  %86 = call i32 @memcpy(i32 %81, i8* %84, i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @int2buff(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %63, %48
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 1
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %9, align 8
  %97 = load i64, i64* @g_tracker_leader_chg_count, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = bitcast %struct.TYPE_17__* %101 to i8*
  store i8* %102, i8** %12, align 8
  br label %103

103:                                              ; preds = %94, %41
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %108, %113
  br i1 %114, label %115, label %178

115:                                              ; preds = %103
  %116 = load i8, i8* @FDFS_CHANGE_FLAG_TRUNK_SERVER, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %11, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = or i32 %120, %117
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %118, align 1
  %123 = load i8*, i8** %12, align 8
  %124 = bitcast i8* %123 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %9, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @memset(i8* %125, i32 0, i32 16)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %8, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = icmp ne %struct.TYPE_16__* %132, null
  br i1 %133, label %134, label %164

134:                                              ; preds = %115
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @FDFS_STORAGE_ID_MAX_SIZE, align 4
  %147 = call i32 @memcpy(i32 %142, i8* %145, i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = call i8* @FDFS_CURRENT_IP_ADDR(%struct.TYPE_16__* %151)
  %153 = load i32, i32* @IP_ADDRESS_SIZE, align 4
  %154 = call i32 @memcpy(i32 %150, i8* %152, i32 %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @int2buff(i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %134, %115
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 1
  store %struct.TYPE_17__* %166, %struct.TYPE_17__** %9, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %177 = bitcast %struct.TYPE_17__* %176 to i8*
  store i8* %177, i8** %12, align 8
  br label %178

178:                                              ; preds = %164, %103
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %183, %188
  br i1 %189, label %190, label %271

190:                                              ; preds = %178
  %191 = load i8, i8* @FDFS_CHANGE_FLAG_GROUP_SERVER, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8*, i8** %11, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = or i32 %195, %192
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %193, align 1
  %198 = load i8*, i8** %12, align 8
  %199 = bitcast i8* %198 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %199, %struct.TYPE_17__** %9, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %203, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %204, i64 %210
  store %struct.TYPE_16__** %211, %struct.TYPE_16__*** %7, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %215, align 8
  store %struct.TYPE_16__** %216, %struct.TYPE_16__*** %6, align 8
  br label %217

217:                                              ; preds = %256, %190
  %218 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %219 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %220 = icmp ult %struct.TYPE_16__** %218, %219
  br i1 %220, label %221, label %259

221:                                              ; preds = %217
  %222 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* @FDFS_STORAGE_ID_MAX_SIZE, align 4
  %236 = call i32 @memcpy(i32 %230, i8* %234, i32 %235)
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = call i8* @FDFS_CURRENT_IP_ADDR(%struct.TYPE_16__* %241)
  %243 = load i32, i32* @IP_ADDRESS_SIZE, align 4
  %244 = call i32 @memcpy(i32 %239, i8* %242, i32 %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @int2buff(i32 %249, i32 %252)
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 1
  store %struct.TYPE_17__* %255, %struct.TYPE_17__** %9, align 8
  br label %256

256:                                              ; preds = %221
  %257 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %257, i32 1
  store %struct.TYPE_16__** %258, %struct.TYPE_16__*** %6, align 8
  br label %217

259:                                              ; preds = %217
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  store i64 %264, i64* %268, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %270 = bitcast %struct.TYPE_17__* %269 to i8*
  store i8* %270, i8** %12, align 8
  br label %271

271:                                              ; preds = %259, %178
  br label %272

272:                                              ; preds = %271, %31
  %273 = load i8*, i8** %12, align 8
  %274 = load %struct.fast_task_info*, %struct.fast_task_info** %4, align 8
  %275 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = ptrtoint i8* %273 to i64
  %278 = ptrtoint i8* %276 to i64
  %279 = sub i64 %277, %278
  %280 = trunc i64 %279 to i32
  %281 = load %struct.fast_task_info*, %struct.fast_task_info** %4, align 8
  %282 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* %5, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %272, %27
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @int2buff(i32, i32) #1

declare dso_local i8* @FDFS_CURRENT_IP_ADDR(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
