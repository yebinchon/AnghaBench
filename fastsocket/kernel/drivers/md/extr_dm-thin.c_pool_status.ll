; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.pool* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pool = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@PM_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@DM_STATUS_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: dm_pool_get_metadata_transaction_id returned %d\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: dm_pool_get_free_metadata_block_count returned %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: dm_pool_get_data_dev_size returned %d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: dm_pool_get_free_block_count returned %d\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: dm_pool_get_metadata_snap returned %d\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%llu %llu/%llu %llu/%llu \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%llu \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@PM_OUT_OF_DATA_SPACE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"out_of_data_space \00", align 1
@PM_READ_ONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ro \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rw \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ignore_discard \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"discard_passdown \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"no_discard_passdown \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"error_if_no_space \00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"queue_if_no_space \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s %s %lu %llu \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i32, i8*, i32)* @pool_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.pool_c*, align 8
  %24 = alloca %struct.pool*, align 8
  %25 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @BDEVNAME_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = load i32, i32* @BDEVNAME_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %22, align 8
  %33 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  %35 = load %struct.pool_c*, %struct.pool_c** %34, align 8
  store %struct.pool_c* %35, %struct.pool_c** %23, align 8
  %36 = load %struct.pool_c*, %struct.pool_c** %23, align 8
  %37 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %36, i32 0, i32 4
  %38 = load %struct.pool*, %struct.pool** %37, align 8
  store %struct.pool* %38, %struct.pool** %24, align 8
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %242 [
    i32 129, label %40
    i32 128, label %212
  ]

40:                                               ; preds = %5
  %41 = load %struct.pool*, %struct.pool** %24, align 8
  %42 = call i32 @get_pool_mode(%struct.pool* %41)
  %43 = load i32, i32* @PM_FAIL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %242

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DM_STATUS_NOFLUSH_FLAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %54 = call i32 @dm_suspended(%struct.dm_target* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct.pool*, %struct.pool** %24, align 8
  %58 = call i32 @commit(%struct.pool* %57)
  br label %59

59:                                               ; preds = %56, %52, %47
  %60 = load %struct.pool*, %struct.pool** %24, align 8
  %61 = getelementptr inbounds %struct.pool, %struct.pool* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dm_pool_get_metadata_transaction_id(i32 %62, i64* %14)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.pool*, %struct.pool** %24, align 8
  %68 = getelementptr inbounds %struct.pool, %struct.pool* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dm_device_name(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %243

73:                                               ; preds = %59
  %74 = load %struct.pool*, %struct.pool** %24, align 8
  %75 = getelementptr inbounds %struct.pool, %struct.pool* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dm_pool_get_free_metadata_block_count(i32 %76, i64* %16)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.pool*, %struct.pool** %24, align 8
  %82 = getelementptr inbounds %struct.pool, %struct.pool* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dm_device_name(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @DMERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  br label %243

87:                                               ; preds = %73
  %88 = load %struct.pool*, %struct.pool** %24, align 8
  %89 = getelementptr inbounds %struct.pool, %struct.pool* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dm_pool_get_metadata_dev_size(i32 %90, i64* %18)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.pool*, %struct.pool** %24, align 8
  %96 = getelementptr inbounds %struct.pool, %struct.pool* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dm_device_name(i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  br label %243

101:                                              ; preds = %87
  %102 = load %struct.pool*, %struct.pool** %24, align 8
  %103 = getelementptr inbounds %struct.pool, %struct.pool* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dm_pool_get_free_block_count(i32 %104, i64* %15)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.pool*, %struct.pool** %24, align 8
  %110 = getelementptr inbounds %struct.pool, %struct.pool* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dm_device_name(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  br label %243

115:                                              ; preds = %101
  %116 = load %struct.pool*, %struct.pool** %24, align 8
  %117 = getelementptr inbounds %struct.pool, %struct.pool* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dm_pool_get_data_dev_size(i32 %118, i64* %17)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.pool*, %struct.pool** %24, align 8
  %124 = getelementptr inbounds %struct.pool, %struct.pool* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dm_device_name(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %127)
  br label %243

129:                                              ; preds = %115
  %130 = load %struct.pool*, %struct.pool** %24, align 8
  %131 = getelementptr inbounds %struct.pool, %struct.pool* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dm_pool_get_metadata_snap(i32 %132, i64* %19)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.pool*, %struct.pool** %24, align 8
  %138 = getelementptr inbounds %struct.pool, %struct.pool* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dm_device_name(i32 %139)
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141)
  br label %243

143:                                              ; preds = %129
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %16, align 8
  %147 = sub nsw i64 %145, %146
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %15, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* %17, align 8
  %153 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %144, i64 %147, i64 %148, i64 %151, i64 %152)
  %154 = load i64, i64* %19, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i64, i64* %19, align 8
  %158 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %157)
  br label %161

159:                                              ; preds = %143
  %160 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %156
  %162 = load %struct.pool*, %struct.pool** %24, align 8
  %163 = getelementptr inbounds %struct.pool, %struct.pool* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PM_OUT_OF_DATA_SPACE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %182

170:                                              ; preds = %161
  %171 = load %struct.pool*, %struct.pool** %24, align 8
  %172 = getelementptr inbounds %struct.pool, %struct.pool* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PM_READ_ONLY, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %181

179:                                              ; preds = %170
  %180 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %177
  br label %182

182:                                              ; preds = %181, %168
  %183 = load %struct.pool*, %struct.pool** %24, align 8
  %184 = getelementptr inbounds %struct.pool, %struct.pool* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %182
  %189 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %201

190:                                              ; preds = %182
  %191 = load %struct.pool*, %struct.pool** %24, align 8
  %192 = getelementptr inbounds %struct.pool, %struct.pool* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %200

198:                                              ; preds = %190
  %199 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %196
  br label %201

201:                                              ; preds = %200, %188
  %202 = load %struct.pool*, %struct.pool** %24, align 8
  %203 = getelementptr inbounds %struct.pool, %struct.pool* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %211

209:                                              ; preds = %201
  %210 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %207
  br label %242

212:                                              ; preds = %5
  %213 = load %struct.pool_c*, %struct.pool_c** %23, align 8
  %214 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %213, i32 0, i32 3
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @format_dev_t(i8* %29, i32 %219)
  %221 = load %struct.pool_c*, %struct.pool_c** %23, align 8
  %222 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @format_dev_t(i8* %32, i32 %227)
  %229 = load %struct.pool*, %struct.pool** %24, align 8
  %230 = getelementptr inbounds %struct.pool, %struct.pool* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.pool_c*, %struct.pool_c** %23, align 8
  %233 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %220, i32 %228, i64 %231, i64 %234)
  %236 = load %struct.pool_c*, %struct.pool_c** %23, align 8
  %237 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %236, i32 0, i32 0
  %238 = load i8*, i8** %10, align 8
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @emit_flags(i32* %237, i8* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %5, %212, %211, %45
  store i32 0, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %245

243:                                              ; preds = %136, %122, %108, %94, %80, %66
  %244 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %245

245:                                              ; preds = %243, %242
  %246 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_pool_mode(%struct.pool*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @dm_suspended(%struct.dm_target*) #2

declare dso_local i32 @commit(%struct.pool*) #2

declare dso_local i32 @dm_pool_get_metadata_transaction_id(i32, i64*) #2

declare dso_local i32 @DMERR(i8*, i32, i32) #2

declare dso_local i32 @dm_device_name(i32) #2

declare dso_local i32 @dm_pool_get_free_metadata_block_count(i32, i64*) #2

declare dso_local i32 @dm_pool_get_metadata_dev_size(i32, i64*) #2

declare dso_local i32 @dm_pool_get_free_block_count(i32, i64*) #2

declare dso_local i32 @dm_pool_get_data_dev_size(i32, i64*) #2

declare dso_local i32 @dm_pool_get_metadata_snap(i32, i64*) #2

declare dso_local i32 @format_dev_t(i8*, i32) #2

declare dso_local i32 @emit_flags(i32*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
