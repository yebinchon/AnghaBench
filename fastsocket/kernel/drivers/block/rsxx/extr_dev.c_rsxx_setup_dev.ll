; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_setup_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_setup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32, %struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_20__*, %struct.TYPE_18__, i32 }
%struct.TYPE_21__ = type { %struct.rsxx_cardinfo*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_21__*, %struct.rsxx_cardinfo*, i32*, i64, i32*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i16 }

@enable_blkdev = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get major number\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed queue alloc\0A\00", align 1
@blkdev_minors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed disk alloc\0A\00", align 1
@rsxx_make_request = common dso_local global i32 0, align 4
@BLK_BOUNCE_ANY = common dso_local global i32 0, align 4
@blkdev_max_hw_sectors = common dso_local global i32 0, align 4
@RSXX_HW_BLK_SIZE = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rsxx%d\00", align 1
@rsxx_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_setup_dev(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i16, align 2
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %5 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %6 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %5, i32 0, i32 6
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load i32, i32* @enable_blkdev, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %196

11:                                               ; preds = %1
  %12 = load i32, i32* @DRIVER_NAME, align 4
  %13 = call i64 @register_blkdev(i32 0, i32 %12)
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %22 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %21)
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %196

26:                                               ; preds = %11
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_21__* @blk_alloc_queue(i32 %27)
  %29 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %30 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %29, i32 0, i32 2
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %30, align 8
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 2
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = icmp ne %struct.TYPE_21__* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %26
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %37 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %36)
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %40 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @DRIVER_NAME, align 4
  %43 = call i32 @unregister_blkdev(i64 %41, i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %196

46:                                               ; preds = %26
  %47 = load i32, i32* @blkdev_minors, align 4
  %48 = call %struct.TYPE_16__* @alloc_disk(i32 %47)
  %49 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %50 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %49, i32 0, i32 3
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %52 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %51, i32 0, i32 3
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = icmp ne %struct.TYPE_16__* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %46
  %56 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %57 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %56)
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %60 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %59, i32 0, i32 2
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = call i32 @blk_cleanup_queue(%struct.TYPE_21__* %61)
  %63 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %64 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @DRIVER_NAME, align 4
  %67 = call i32 @unregister_blkdev(i64 %65, i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %196

70:                                               ; preds = %46
  %71 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %72 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i16, i16* %74, align 8
  store i16 %75, i16* %4, align 2
  %76 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %77 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %76, i32 0, i32 2
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = load i32, i32* @rsxx_make_request, align 4
  %80 = call i32 @blk_queue_make_request(%struct.TYPE_21__* %78, i32 %79)
  %81 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %82 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %81, i32 0, i32 2
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = load i32, i32* @BLK_BOUNCE_ANY, align 4
  %85 = call i32 @blk_queue_bounce_limit(%struct.TYPE_21__* %83, i32 %84)
  %86 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %87 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %86, i32 0, i32 2
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = load i16, i16* %4, align 2
  %90 = zext i16 %89 to i32
  %91 = sub nsw i32 %90, 1
  %92 = trunc i32 %91 to i16
  %93 = call i32 @blk_queue_dma_alignment(%struct.TYPE_21__* %88, i16 zeroext %92)
  %94 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %95 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %94, i32 0, i32 2
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = load i32, i32* @blkdev_max_hw_sectors, align 4
  %98 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_21__* %96, i32 %97)
  %99 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %100 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %99, i32 0, i32 2
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = load i16, i16* %4, align 2
  %103 = call i32 @blk_queue_logical_block_size(%struct.TYPE_21__* %101, i16 zeroext %102)
  %104 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %105 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %104, i32 0, i32 2
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = load i32, i32* @RSXX_HW_BLK_SIZE, align 4
  %108 = call i32 @blk_queue_physical_block_size(%struct.TYPE_21__* %106, i32 %107)
  %109 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %110 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %111 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %110, i32 0, i32 2
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = call i32 @queue_flag_set_unlocked(i32 %109, %struct.TYPE_21__* %112)
  %114 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %115 = call i64 @rsxx_discard_supported(%struct.rsxx_cardinfo* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %70
  %118 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %119 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %120 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %119, i32 0, i32 2
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = call i32 @queue_flag_set_unlocked(i32 %118, %struct.TYPE_21__* %121)
  %123 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %124 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %123, i32 0, i32 2
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = load i32, i32* @RSXX_HW_BLK_SIZE, align 4
  %127 = ashr i32 %126, 9
  %128 = call i32 @blk_queue_max_discard_sectors(%struct.TYPE_21__* %125, i32 %127)
  %129 = load i32, i32* @RSXX_HW_BLK_SIZE, align 4
  %130 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %131 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %130, i32 0, i32 2
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 8
  %135 = load i32, i32* @RSXX_HW_BLK_SIZE, align 4
  %136 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %137 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %136, i32 0, i32 2
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 4
  %141 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %142 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %141, i32 0, i32 2
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %117, %70
  %147 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %148 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %149 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %148, i32 0, i32 2
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store %struct.rsxx_cardinfo* %147, %struct.rsxx_cardinfo** %151, align 8
  %152 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %153 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %152, i32 0, i32 3
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %158 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @snprintf(i32 %156, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %162 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %161, i32 0, i32 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %166 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %165, i32 0, i32 3
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 5
  store i32* %164, i32** %168, align 8
  %169 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %170 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %173 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %172, i32 0, i32 3
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  %176 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %177 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %176, i32 0, i32 3
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %181 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %180, i32 0, i32 3
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  store i32* @rsxx_fops, i32** %183, align 8
  %184 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %185 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %186 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  store %struct.rsxx_cardinfo* %184, %struct.rsxx_cardinfo** %188, align 8
  %189 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %190 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %189, i32 0, i32 2
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %193 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %192, i32 0, i32 3
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %195, align 8
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %146, %55, %35, %20, %10
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @register_blkdev(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local %struct.TYPE_21__* @blk_alloc_queue(i32) #1

declare dso_local i32 @unregister_blkdev(i64, i32) #1

declare dso_local %struct.TYPE_16__* @alloc_disk(i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_21__*) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @blk_queue_dma_alignment(%struct.TYPE_21__*, i16 zeroext) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_21__*, i16 zeroext) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @rsxx_discard_supported(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
