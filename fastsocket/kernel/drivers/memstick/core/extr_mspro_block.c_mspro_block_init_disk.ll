; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_init_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, %struct.memstick_host* }
%struct.memstick_host = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.mspro_block_data = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i32*, %struct.TYPE_17__*, %struct.mspro_block_data*, i32*, i32 }
%struct.TYPE_17__ = type { %struct.memstick_dev* }
%struct.TYPE_15__ = type { i64* }
%struct.mspro_devinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.mspro_sys_info = type { i32, i32, i32, i32, i32, i32 }
%struct.mspro_sys_attr = type { i64, %struct.mspro_sys_info* }

@BLK_BOUNCE_HIGH = common dso_local global i64 0, align 8
@MSPRO_BLOCK_ID_DEVINFO = common dso_local global i64 0, align 8
@MSPRO_BLOCK_ID_SYSINFO = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@mspro_block_disk_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mspro_block_disk_lock = common dso_local global i32 0, align 4
@MSPRO_BLOCK_PART_SHIFT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@mspro_block_submit_req = common dso_local global i32 0, align 4
@mspro_block_prepare_req = common dso_local global i32 0, align 4
@MSPRO_BLOCK_MAX_PAGES = common dso_local global i32 0, align 4
@MSPRO_BLOCK_MAX_SEGS = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@ms_block_bdops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mspblk%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"capacity set %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @mspro_block_init_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_init_disk(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.mspro_block_data*, align 8
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca %struct.mspro_devinfo*, align 8
  %7 = alloca %struct.mspro_sys_info*, align 8
  %8 = alloca %struct.mspro_sys_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  %13 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %14 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %13)
  store %struct.mspro_block_data* %14, %struct.mspro_block_data** %4, align 8
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %16 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %15, i32 0, i32 1
  %17 = load %struct.memstick_host*, %struct.memstick_host** %16, align 8
  store %struct.memstick_host* %17, %struct.memstick_host** %5, align 8
  store %struct.mspro_devinfo* null, %struct.mspro_devinfo** %6, align 8
  store %struct.mspro_sys_info* null, %struct.mspro_sys_info** %7, align 8
  store %struct.mspro_sys_attr* null, %struct.mspro_sys_attr** %8, align 8
  %18 = load i64, i64* @BLK_BOUNCE_HIGH, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %20 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %26 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %33 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %31, %24, %1
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %80, %37
  %39 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %40 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %38
  %49 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %50 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.mspro_sys_attr* @mspro_from_sysfs_attr(i64 %56)
  store %struct.mspro_sys_attr* %57, %struct.mspro_sys_attr** %8, align 8
  %58 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %8, align 8
  %59 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MSPRO_BLOCK_ID_DEVINFO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %8, align 8
  %65 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %64, i32 0, i32 1
  %66 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %65, align 8
  %67 = bitcast %struct.mspro_sys_info* %66 to %struct.mspro_devinfo*
  store %struct.mspro_devinfo* %67, %struct.mspro_devinfo** %6, align 8
  br label %79

68:                                               ; preds = %48
  %69 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %8, align 8
  %70 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MSPRO_BLOCK_ID_SYSINFO, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %8, align 8
  %76 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %75, i32 0, i32 1
  %77 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %76, align 8
  store %struct.mspro_sys_info* %77, %struct.mspro_sys_info** %7, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %38

83:                                               ; preds = %38
  %84 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %6, align 8
  %85 = icmp ne %struct.mspro_devinfo* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %7, align 8
  %88 = icmp ne %struct.mspro_sys_info* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %297

92:                                               ; preds = %86
  %93 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %6, align 8
  %94 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @be16_to_cpu(i32 %95)
  %97 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %98 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %6, align 8
  %100 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be16_to_cpu(i32 %101)
  %103 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %104 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %6, align 8
  %106 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @be16_to_cpu(i32 %107)
  %109 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %110 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %7, align 8
  %112 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @be16_to_cpu(i32 %113)
  %115 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %116 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i32 @idr_pre_get(i32* @mspro_block_disk_idr, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %92
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %297

123:                                              ; preds = %92
  %124 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %125 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %126 = call i32 @idr_get_new(i32* @mspro_block_disk_idr, %struct.memstick_dev* %125, i32* %10)
  store i32 %126, i32* %9, align 4
  %127 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %297

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = icmp sgt i32 %135, 255
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @ENOSPC, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %291

140:                                              ; preds = %132
  %141 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %142 = shl i32 1, %141
  %143 = call %struct.TYPE_16__* @alloc_disk(i32 %142)
  %144 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %145 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %144, i32 0, i32 6
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %145, align 8
  %146 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %147 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %146, i32 0, i32 6
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = icmp ne %struct.TYPE_16__* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  br label %291

153:                                              ; preds = %140
  %154 = load i32, i32* @mspro_block_submit_req, align 4
  %155 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %156 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %155, i32 0, i32 8
  %157 = call %struct.TYPE_17__* @blk_init_queue(i32 %154, i32* %156)
  %158 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %159 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %158, i32 0, i32 7
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %159, align 8
  %160 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %161 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %160, i32 0, i32 7
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = icmp ne %struct.TYPE_17__* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %153
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %286

167:                                              ; preds = %153
  %168 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %169 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %170 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %169, i32 0, i32 7
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store %struct.memstick_dev* %168, %struct.memstick_dev** %172, align 8
  %173 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %174 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %173, i32 0, i32 7
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = load i32, i32* @mspro_block_prepare_req, align 4
  %177 = call i32 @blk_queue_prep_rq(%struct.TYPE_17__* %175, i32 %176)
  %178 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %179 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %178, i32 0, i32 7
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = call i32 @blk_queue_bounce_limit(%struct.TYPE_17__* %180, i64 %181)
  %183 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %184 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %183, i32 0, i32 7
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = load i32, i32* @MSPRO_BLOCK_MAX_PAGES, align 4
  %187 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_17__* %185, i32 %186)
  %188 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %189 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %188, i32 0, i32 7
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = load i32, i32* @MSPRO_BLOCK_MAX_SEGS, align 4
  %192 = call i32 @blk_queue_max_segments(%struct.TYPE_17__* %190, i32 %191)
  %193 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %194 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %193, i32 0, i32 7
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = load i32, i32* @MSPRO_BLOCK_MAX_PAGES, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %199 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = mul i64 %197, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @blk_queue_max_segment_size(%struct.TYPE_17__* %195, i32 %202)
  %204 = load i32, i32* @major, align 4
  %205 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %206 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %205, i32 0, i32 6
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 6
  store i32 %204, i32* %208, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %213 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %212, i32 0, i32 6
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  store i32 %211, i32* %215, align 8
  %216 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %217 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %216, i32 0, i32 6
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 5
  store i32* @ms_block_bdops, i32** %219, align 8
  %220 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %221 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %220, i32 0, i32 4
  store i32 1, i32* %221, align 8
  %222 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %223 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %224 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %223, i32 0, i32 6
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 4
  store %struct.mspro_block_data* %222, %struct.mspro_block_data** %226, align 8
  %227 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %228 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %227, i32 0, i32 7
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %231 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %230, i32 0, i32 6
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  store %struct.TYPE_17__* %229, %struct.TYPE_17__** %233, align 8
  %234 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %235 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %234, i32 0, i32 0
  %236 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %237 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %236, i32 0, i32 6
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  store i32* %235, i32** %239, align 8
  %240 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %241 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %240, i32 0, i32 6
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @sprintf(i32 %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %245)
  %247 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %248 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %247, i32 0, i32 7
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %251 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = call i32 @blk_queue_logical_block_size(%struct.TYPE_17__* %249, i32 %253)
  %255 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %7, align 8
  %256 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @be16_to_cpu(i32 %257)
  store i64 %258, i64* %12, align 8
  %259 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %7, align 8
  %260 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @be16_to_cpu(i32 %261)
  %263 = load i64, i64* %12, align 8
  %264 = mul i64 %263, %262
  store i64 %264, i64* %12, align 8
  %265 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %266 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = lshr i64 %267, 9
  %269 = load i64, i64* %12, align 8
  %270 = mul i64 %269, %268
  store i64 %270, i64* %12, align 8
  %271 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %272 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %271, i32 0, i32 6
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = load i64, i64* %12, align 8
  %275 = call i32 @set_capacity(%struct.TYPE_16__* %273, i64 %274)
  %276 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %277 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %276, i32 0, i32 0
  %278 = load i64, i64* %12, align 8
  %279 = call i32 @dev_dbg(i32* %277, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %278)
  %280 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %281 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %280, i32 0, i32 6
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = call i32 @add_disk(%struct.TYPE_16__* %282)
  %284 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %285 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %284, i32 0, i32 5
  store i32 1, i32* %285, align 4
  store i32 0, i32* %2, align 4
  br label %297

286:                                              ; preds = %164
  %287 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %288 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %287, i32 0, i32 6
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = call i32 @put_disk(%struct.TYPE_16__* %289)
  br label %291

291:                                              ; preds = %286, %150, %137
  %292 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @idr_remove(i32* @mspro_block_disk_idr, i32 %293)
  %295 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %296 = load i32, i32* %9, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %291, %167, %130, %120, %89
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local %struct.mspro_sys_attr* @mspro_from_sysfs_attr(i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.memstick_dev*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_16__* @alloc_disk(i32) #1

declare dso_local %struct.TYPE_17__* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @blk_queue_prep_rq(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @add_disk(%struct.TYPE_16__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_16__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
