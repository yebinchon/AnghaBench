; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_24__*, i32*, %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_24__*, %struct.driver_data*, i32*, i32, i32*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, %struct.driver_data* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.kobject = type { i32 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Protocol layer initialization failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTIP_MAX_MINORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to allocate gendisk structure\0A\00", align 1
@rssd_index_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rssd_index_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"rssd\00", align 1
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@mtip_block_ops = common dso_local global i32 0, align 4
@MTIP_FTL_REBUILD_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to allocate request queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mtip_make_request = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@MTIP_MAX_SG = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@MTIP_MAX_TRIM_ENTRY_LEN = common dso_local global i32 0, align 4
@MTIP_MAX_TRIM_ENTRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not read drive capacity\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"mtip_svc_thd_%02d\00", align 1
@mtip_service_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"service thread failed to start\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_initialize(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca [16 x i8], align 16
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 3
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = icmp ne %struct.TYPE_22__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %118

15:                                               ; preds = %1
  %16 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %17 = call i32 @mtip_hw_init(%struct.driver_data* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 6
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %321

28:                                               ; preds = %15
  %29 = load i32, i32* @MTIP_MAX_MINORS, align 4
  %30 = call %struct.TYPE_22__* @alloc_disk(i32 %29)
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 3
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %32, align 8
  %33 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = icmp eq %struct.TYPE_22__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 6
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %318

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @ida_pre_get(i32* @rssd_index_ida, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %313

51:                                               ; preds = %46
  %52 = call i32 @spin_lock(i32* @rssd_index_lock)
  %53 = call i32 @ida_get_new(i32* @rssd_index_ida, i32* %7)
  store i32 %53, i32* %4, align 4
  %54 = call i32 @spin_unlock(i32* @rssd_index_lock)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %46, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %313

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %67 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DISK_NAME_LEN, align 4
  %72 = call i32 @rssd_disk_name_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %308

76:                                               ; preds = %64
  %77 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %78 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %77, i32 0, i32 6
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %82 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %81, i32 0, i32 3
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 5
  store i32* %80, i32** %84, align 8
  %85 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %89 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 8
  %92 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %93 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MTIP_MAX_MINORS, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %98 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %102 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %101, i32 0, i32 3
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  store i32* @mtip_block_ops, i32** %104, align 8
  %105 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %106 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %107 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %106, i32 0, i32 3
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  store %struct.driver_data* %105, %struct.driver_data** %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %112 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @MTIP_FTL_REBUILD_MAGIC, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %76
  br label %262

117:                                              ; preds = %76
  br label %118

118:                                              ; preds = %117, %14
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call %struct.TYPE_24__* @blk_alloc_queue(i32 %119)
  %121 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %122 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %121, i32 0, i32 4
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %122, align 8
  %123 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %124 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %123, i32 0, i32 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = icmp eq %struct.TYPE_24__* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %129 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %128, i32 0, i32 6
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %307

135:                                              ; preds = %118
  %136 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %137 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %136, i32 0, i32 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = load i32, i32* @mtip_make_request, align 4
  %140 = call i32 @blk_queue_make_request(%struct.TYPE_24__* %138, i32 %139)
  %141 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %142 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %141, i32 0, i32 4
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %145 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %144, i32 0, i32 3
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  store %struct.TYPE_24__* %143, %struct.TYPE_24__** %147, align 8
  %148 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %149 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %150 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %149, i32 0, i32 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  store %struct.driver_data* %148, %struct.driver_data** %152, align 8
  %153 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %154 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %155 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %154, i32 0, i32 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = call i32 @set_bit(i32 %153, i32* %157)
  %159 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %160 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %159, i32 0, i32 4
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  %162 = load i32, i32* @MTIP_MAX_SG, align 4
  %163 = call i32 @blk_queue_max_segments(%struct.TYPE_24__* %161, i32 %162)
  %164 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %165 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %164, i32 0, i32 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %165, align 8
  %167 = call i32 @blk_queue_physical_block_size(%struct.TYPE_24__* %166, i32 4096)
  %168 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %169 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %168, i32 0, i32 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_24__* %170, i32 65535)
  %172 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %173 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %172, i32 0, i32 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = call i32 @blk_queue_max_segment_size(%struct.TYPE_24__* %174, i32 4194304)
  %176 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %177 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %176, i32 0, i32 4
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %177, align 8
  %179 = call i32 @blk_queue_io_min(%struct.TYPE_24__* %178, i32 4096)
  %180 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %181 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %180, i32 0, i32 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = call i32 @blk_queue_flush(%struct.TYPE_24__* %182, i32 0)
  %184 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %185 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %212

188:                                              ; preds = %135
  %189 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %190 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %191 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %190, i32 0, i32 4
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = call i32 @set_bit(i32 %189, i32* %193)
  %195 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %196 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %195, i32 0, i32 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  store i32 4096, i32* %199, align 8
  %200 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %201 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %200, i32 0, i32 4
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %201, align 8
  %203 = load i32, i32* @MTIP_MAX_TRIM_ENTRY_LEN, align 4
  %204 = load i32, i32* @MTIP_MAX_TRIM_ENTRIES, align 4
  %205 = mul nsw i32 %203, %204
  %206 = call i32 @blk_queue_max_discard_sectors(%struct.TYPE_24__* %202, i32 %205)
  %207 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %208 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %207, i32 0, i32 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %188, %135
  %213 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %214 = call i32 @mtip_hw_get_capacity(%struct.driver_data* %213, i32* %6)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %212
  %217 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %218 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %217, i32 0, i32 6
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = call i32 @dev_warn(i32* %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %222 = load i32, i32* @EIO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %302

224:                                              ; preds = %212
  %225 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %226 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %225, i32 0, i32 3
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @set_capacity(%struct.TYPE_22__* %227, i32 %228)
  %230 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %231 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %230, i32 0, i32 3
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = call i32 @add_disk(%struct.TYPE_22__* %232)
  %234 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %235 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %234, i32 0, i32 3
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %235, align 8
  %237 = call %struct.TYPE_23__* @disk_to_dev(%struct.TYPE_22__* %236)
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = call %struct.kobject* @kobject_get(i32* %238)
  store %struct.kobject* %239, %struct.kobject** %8, align 8
  %240 = load %struct.kobject*, %struct.kobject** %8, align 8
  %241 = icmp ne %struct.kobject* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %224
  %243 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %244 = load %struct.kobject*, %struct.kobject** %8, align 8
  %245 = call i32 @mtip_hw_sysfs_init(%struct.driver_data* %243, %struct.kobject* %244)
  %246 = load %struct.kobject*, %struct.kobject** %8, align 8
  %247 = call i32 @kobject_put(%struct.kobject* %246)
  br label %248

248:                                              ; preds = %242, %224
  %249 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %250 = call i32 @mtip_hw_debugfs_init(%struct.driver_data* %249)
  %251 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %252 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %257 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %258 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %257, i32 0, i32 7
  %259 = call i32 @set_bit(i32 %256, i32* %258)
  %260 = load i32, i32* %4, align 4
  store i32 %260, i32* %2, align 4
  br label %323

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %261, %116
  %263 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @sprintf(i8* %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* @mtip_service_thread, align 4
  %267 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %268 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %269 = call i32* @kthread_run(i32 %266, %struct.driver_data* %267, i8* %268)
  %270 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %271 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %270, i32 0, i32 5
  store i32* %269, i32** %271, align 8
  %272 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %273 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = call i64 @IS_ERR(i32* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %262
  %278 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %279 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %278, i32 0, i32 6
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 0
  %282 = call i32 @dev_err(i32* %281, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %283 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %284 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %283, i32 0, i32 5
  store i32* null, i32** %284, align 8
  %285 = load i32, i32* @EFAULT, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %4, align 4
  br label %295

287:                                              ; preds = %262
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @MTIP_FTL_REBUILD_MAGIC, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i32, i32* %5, align 4
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %291, %287
  %294 = load i32, i32* %4, align 4
  store i32 %294, i32* %2, align 4
  br label %323

295:                                              ; preds = %277
  %296 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %297 = call i32 @mtip_hw_debugfs_exit(%struct.driver_data* %296)
  %298 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %299 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %298, i32 0, i32 3
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %299, align 8
  %301 = call i32 @del_gendisk(%struct.TYPE_22__* %300)
  br label %302

302:                                              ; preds = %295, %216
  %303 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %304 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %303, i32 0, i32 4
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %304, align 8
  %306 = call i32 @blk_cleanup_queue(%struct.TYPE_24__* %305)
  br label %307

307:                                              ; preds = %302, %127
  br label %308

308:                                              ; preds = %307, %75
  %309 = call i32 @spin_lock(i32* @rssd_index_lock)
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @ida_remove(i32* @rssd_index_ida, i32 %310)
  %312 = call i32 @spin_unlock(i32* @rssd_index_lock)
  br label %313

313:                                              ; preds = %308, %63, %50
  %314 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %315 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %314, i32 0, i32 3
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %315, align 8
  %317 = call i32 @put_disk(%struct.TYPE_22__* %316)
  br label %318

318:                                              ; preds = %313, %37
  %319 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %320 = call i32 @mtip_hw_exit(%struct.driver_data* %319)
  br label %321

321:                                              ; preds = %318, %20
  %322 = load i32, i32* %4, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %321, %293, %255
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @mtip_hw_init(%struct.driver_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.TYPE_22__* @alloc_disk(i32) #1

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rssd_disk_name_format(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @blk_alloc_queue(i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_io_min(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_flush(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @mtip_hw_get_capacity(%struct.driver_data*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @add_disk(%struct.TYPE_22__*) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local %struct.TYPE_23__* @disk_to_dev(%struct.TYPE_22__*) #1

declare dso_local i32 @mtip_hw_sysfs_init(%struct.driver_data*, %struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @mtip_hw_debugfs_init(%struct.driver_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @kthread_run(i32, %struct.driver_data*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mtip_hw_debugfs_exit(%struct.driver_data*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_22__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_24__*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_22__*) #1

declare dso_local i32 @mtip_hw_exit(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
