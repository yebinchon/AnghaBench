; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_block_device = type { %struct.gendisk*, i32, i32, i32, i32 }
%struct.gendisk = type { %struct.i2o_block_device*, i32*, %struct.request_queue*, i32 }
%struct.request_queue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Insufficient memory to allocate I2O Block disk.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CACHE_PREFETCH = common dso_local global i32 0, align 4
@CACHE_WRITEBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Insufficient memory to allocate gendisk.\0A\00", align 1
@i2o_block_request_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Insufficient memory to allocate request queue.\0A\00", align 1
@i2o_block_prep_req_fn = common dso_local global i32 0, align 4
@I2O_MAJOR = common dso_local global i32 0, align 4
@i2o_block_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2o_block_device* ()* @i2o_block_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2o_block_device* @i2o_block_device_alloc() #0 {
  %1 = alloca %struct.i2o_block_device*, align 8
  %2 = alloca %struct.i2o_block_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.i2o_block_device* @kzalloc(i32 24, i32 %6)
  store %struct.i2o_block_device* %7, %struct.i2o_block_device** %2, align 8
  %8 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %9 = icmp ne %struct.i2o_block_device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 @osm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %70

14:                                               ; preds = %0
  %15 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %16 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %19 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load i32, i32* @CACHE_PREFETCH, align 4
  %22 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %23 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @CACHE_WRITEBACK, align 4
  %25 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %26 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = call %struct.gendisk* @alloc_disk(i32 16)
  store %struct.gendisk* %27, %struct.gendisk** %3, align 8
  %28 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %29 = icmp ne %struct.gendisk* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = call i32 @osm_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %67

34:                                               ; preds = %14
  %35 = load i32, i32* @i2o_block_request_fn, align 4
  %36 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %37 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %36, i32 0, i32 1
  %38 = call %struct.request_queue* @blk_init_queue(i32 %35, i32* %37)
  store %struct.request_queue* %38, %struct.request_queue** %4, align 8
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = icmp ne %struct.request_queue* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = call i32 @osm_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %64

45:                                               ; preds = %34
  %46 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %47 = load i32, i32* @i2o_block_prep_req_fn, align 4
  %48 = call i32 @blk_queue_prep_rq(%struct.request_queue* %46, i32 %47)
  %49 = load i32, i32* @I2O_MAJOR, align 4
  %50 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %51 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %53 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %54 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %53, i32 0, i32 2
  store %struct.request_queue* %52, %struct.request_queue** %54, align 8
  %55 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %56 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %55, i32 0, i32 1
  store i32* @i2o_block_fops, i32** %56, align 8
  %57 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %58 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %59 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %58, i32 0, i32 0
  store %struct.i2o_block_device* %57, %struct.i2o_block_device** %59, align 8
  %60 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %61 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %62 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %61, i32 0, i32 0
  store %struct.gendisk* %60, %struct.gendisk** %62, align 8
  %63 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  store %struct.i2o_block_device* %63, %struct.i2o_block_device** %1, align 8
  br label %73

64:                                               ; preds = %41
  %65 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %66 = call i32 @put_disk(%struct.gendisk* %65)
  br label %67

67:                                               ; preds = %64, %30
  %68 = load %struct.i2o_block_device*, %struct.i2o_block_device** %2, align 8
  %69 = call i32 @kfree(%struct.i2o_block_device* %68)
  br label %70

70:                                               ; preds = %67, %10
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.i2o_block_device* @ERR_PTR(i32 %71)
  store %struct.i2o_block_device* %72, %struct.i2o_block_device** %1, align 8
  br label %73

73:                                               ; preds = %70, %45
  %74 = load %struct.i2o_block_device*, %struct.i2o_block_device** %1, align 8
  ret %struct.i2o_block_device* %74
}

declare dso_local %struct.i2o_block_device* @kzalloc(i32, i32) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local %struct.request_queue* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @blk_queue_prep_rq(%struct.request_queue*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.i2o_block_device*) #1

declare dso_local %struct.i2o_block_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
