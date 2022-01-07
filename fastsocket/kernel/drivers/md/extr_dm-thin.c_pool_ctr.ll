; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_6__, %struct.pool*, %struct.pool_features, %struct.pool_features, i64, %struct.dm_dev*, %struct.dm_dev*, %struct.dm_target* }
%struct.TYPE_6__ = type { i32 }
%struct.pool = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pool_features = type { i64, i64, i64 }
%struct.dm_dev = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@dm_thin_pool_table = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@PM_READ_ONLY = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error opening metadata block device\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error getting data device\00", align 1
@DATA_DEV_BLOCK_SIZE_MIN_SECTORS = common dso_local global i64 0, align 8
@DATA_DEV_BLOCK_SIZE_MAX_SECTORS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid block size\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid low water mark\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Discard support cannot be disabled once enabled\00", align 1
@metadata_low_callback = common dso_local global i32 0, align 4
@pool_is_congested = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @pool_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pool_c*, align 8
  %11 = alloca %struct.pool*, align 8
  %12 = alloca %struct.pool_features, align 8
  %13 = alloca %struct.dm_arg_set, align 8
  %14 = alloca %struct.dm_dev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dm_dev*, align 8
  %18 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %249

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 1
  store i8** %30, i8*** %31, align 8
  %32 = call i32 @pool_features_init(%struct.pool_features* %12)
  %33 = call i32 @dm_consume_args(%struct.dm_arg_set* %13, i32 4)
  %34 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %35 = call i32 @parse_pool_features(%struct.dm_arg_set* %13, %struct.pool_features* %12, %struct.dm_target* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %249

39:                                               ; preds = %27
  %40 = load i32, i32* @FMODE_READ, align 4
  %41 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PM_READ_ONLY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @FMODE_WRITE, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %50 = or i32 %40, %49
  store i32 %50, i32* %18, align 4
  %51 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @dm_get_device(%struct.dm_target* %51, i8* %54, i32 %55, %struct.dm_dev** %17)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %61 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  br label %249

62:                                               ; preds = %48
  %63 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %64 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @warn_if_metadata_device_too_big(i32 %65)
  %67 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @FMODE_READ, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @dm_get_device(%struct.dm_target* %67, i8* %70, i32 %73, %struct.dm_dev** %14)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %79 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %79, align 8
  br label %245

80:                                               ; preds = %62
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @kstrtoul(i8* %83, i32 10, i64* %15)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %15, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MAX_SECTORS, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %100 = sub i64 %99, 1
  %101 = and i64 %98, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %93, %89, %86, %80
  %104 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %105 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %241

108:                                              ; preds = %97
  %109 = load i8**, i8*** %7, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @kstrtoull(i8* %111, i32 10, i64* %16)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %116 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %116, align 8
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  br label %241

119:                                              ; preds = %108
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.pool_c* @kzalloc(i32 96, i32 %120)
  store %struct.pool_c* %121, %struct.pool_c** %10, align 8
  %122 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %123 = icmp ne %struct.pool_c* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %8, align 4
  br label %241

127:                                              ; preds = %119
  %128 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %129 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dm_table_get_md(i32 %130)
  %132 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %133 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PM_READ_ONLY, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %142 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %141, i32 0, i32 0
  %143 = call %struct.pool* @__pool_find(i32 %131, i32 %134, i64 %135, i32 %140, i8** %142, i32* %9)
  store %struct.pool* %143, %struct.pool** %11, align 8
  %144 = load %struct.pool*, %struct.pool** %11, align 8
  %145 = call i64 @IS_ERR(%struct.pool* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = load %struct.pool*, %struct.pool** %11, align 8
  %149 = call i32 @PTR_ERR(%struct.pool* %148)
  store i32 %149, i32* %8, align 4
  br label %238

150:                                              ; preds = %127
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.pool*, %struct.pool** %11, align 8
  %157 = getelementptr inbounds %struct.pool, %struct.pool* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %155, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %163 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %162, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8** %163, align 8
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %8, align 4
  br label %235

166:                                              ; preds = %153, %150
  %167 = load %struct.pool*, %struct.pool** %11, align 8
  %168 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %169 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %168, i32 0, i32 1
  store %struct.pool* %167, %struct.pool** %169, align 8
  %170 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %171 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %172 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %171, i32 0, i32 7
  store %struct.dm_target* %170, %struct.dm_target** %172, align 8
  %173 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %174 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %175 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %174, i32 0, i32 6
  store %struct.dm_dev* %173, %struct.dm_dev** %175, align 8
  %176 = load %struct.dm_dev*, %struct.dm_dev** %14, align 8
  %177 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %178 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %177, i32 0, i32 5
  store %struct.dm_dev* %176, %struct.dm_dev** %178, align 8
  %179 = load i64, i64* %16, align 8
  %180 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %181 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %180, i32 0, i32 4
  store i64 %179, i64* %181, align 8
  %182 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %183 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %182, i32 0, i32 3
  %184 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %185 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %184, i32 0, i32 2
  %186 = bitcast %struct.pool_features* %185 to i8*
  %187 = bitcast %struct.pool_features* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %186, i8* align 8 %187, i64 24, i1 false)
  %188 = bitcast %struct.pool_features* %183 to i8*
  %189 = bitcast %struct.pool_features* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 24, i1 false)
  %190 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %191 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %190, i32 0, i32 1
  store i32 1, i32* %191, align 8
  %192 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %193 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %192, i32 0, i32 2
  store i32 1, i32* %193, align 4
  %194 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %166
  %198 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %203 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %202, i32 0, i32 3
  store i32 1, i32* %203, align 8
  %204 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %205 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %204, i32 0, i32 4
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %201, %197, %166
  %207 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %208 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %209 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %208, i32 0, i32 6
  store %struct.pool_c* %207, %struct.pool_c** %209, align 8
  %210 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %211 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %210, i32 0, i32 1
  %212 = load %struct.pool*, %struct.pool** %211, align 8
  %213 = getelementptr inbounds %struct.pool, %struct.pool* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %216 = call i32 @calc_metadata_threshold(%struct.pool_c* %215)
  %217 = load i32, i32* @metadata_low_callback, align 4
  %218 = load %struct.pool*, %struct.pool** %11, align 8
  %219 = call i32 @dm_pool_register_metadata_threshold(i32 %214, i32 %216, i32 %217, %struct.pool* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %206
  br label %238

223:                                              ; preds = %206
  %224 = load i32, i32* @pool_is_congested, align 4
  %225 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %226 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %229 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %232 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %231, i32 0, i32 0
  %233 = call i32 @dm_table_add_target_callbacks(i32 %230, %struct.TYPE_6__* %232)
  %234 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %252

235:                                              ; preds = %161
  %236 = load %struct.pool*, %struct.pool** %11, align 8
  %237 = call i32 @__pool_dec(%struct.pool* %236)
  br label %238

238:                                              ; preds = %235, %222, %147
  %239 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %240 = call i32 @kfree(%struct.pool_c* %239)
  br label %241

241:                                              ; preds = %238, %124, %114, %103
  %242 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %243 = load %struct.dm_dev*, %struct.dm_dev** %14, align 8
  %244 = call i32 @dm_put_device(%struct.dm_target* %242, %struct.dm_dev* %243)
  br label %245

245:                                              ; preds = %241, %77
  %246 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %247 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %248 = call i32 @dm_put_device(%struct.dm_target* %246, %struct.dm_dev* %247)
  br label %249

249:                                              ; preds = %245, %59, %38, %22
  %250 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %249, %223
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pool_features_init(%struct.pool_features*) #1

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i32 @parse_pool_features(%struct.dm_arg_set*, %struct.pool_features*, %struct.dm_target*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @warn_if_metadata_device_too_big(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local %struct.pool_c* @kzalloc(i32, i32) #1

declare dso_local %struct.pool* @__pool_find(i32, i32, i64, i32, i8**, i32*) #1

declare dso_local i32 @dm_table_get_md(i32) #1

declare dso_local i64 @IS_ERR(%struct.pool*) #1

declare dso_local i32 @PTR_ERR(%struct.pool*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dm_pool_register_metadata_threshold(i32, i32, i32, %struct.pool*) #1

declare dso_local i32 @calc_metadata_threshold(%struct.pool_c*) #1

declare dso_local i32 @dm_table_add_target_callbacks(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__pool_dec(%struct.pool*) #1

declare dso_local i32 @kfree(%struct.pool_c*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
