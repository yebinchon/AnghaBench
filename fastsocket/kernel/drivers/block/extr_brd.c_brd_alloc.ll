; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brd_device = type { i32, i64, %struct.gendisk*, i32, i32 }
%struct.gendisk = type { i32, i32, i32, i64, %struct.brd_device*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@brd_make_request = common dso_local global i32 0, align 4
@BLK_BOUNCE_ANY = common dso_local global i32 0, align 4
@part_shift = common dso_local global i32 0, align 4
@RAMDISK_MAJOR = common dso_local global i32 0, align 4
@brd_fops = common dso_local global i32 0, align 4
@GENHD_FL_SUPPRESS_PARTITION_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ram%d\00", align 1
@rd_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brd_device* (i32)* @brd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brd_device* @brd_alloc(i32 %0) #0 {
  %2 = alloca %struct.brd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brd_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.brd_device* @kzalloc(i32 32, i32 %6)
  store %struct.brd_device* %7, %struct.brd_device** %4, align 8
  %8 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %9 = icmp ne %struct.brd_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %96

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %14 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %16 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %19 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i32 @INIT_RADIX_TREE(i32* %19, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @blk_alloc_queue(i32 %22)
  %24 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %25 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %27 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %11
  br label %93

31:                                               ; preds = %11
  %32 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %33 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @brd_make_request, align 4
  %36 = call i32 @blk_queue_make_request(i64 %34, i32 %35)
  %37 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %38 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @blk_queue_max_hw_sectors(i64 %39, i32 1024)
  %41 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %42 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @BLK_BOUNCE_ANY, align 4
  %45 = call i32 @blk_queue_bounce_limit(i64 %43, i32 %44)
  %46 = load i32, i32* @part_shift, align 4
  %47 = shl i32 1, %46
  %48 = call %struct.gendisk* @alloc_disk(i32 %47)
  %49 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %50 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %49, i32 0, i32 2
  store %struct.gendisk* %48, %struct.gendisk** %50, align 8
  store %struct.gendisk* %48, %struct.gendisk** %5, align 8
  %51 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %52 = icmp ne %struct.gendisk* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  br label %88

54:                                               ; preds = %31
  %55 = load i32, i32* @RAMDISK_MAJOR, align 4
  %56 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %57 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @part_shift, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %62 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %64 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %63, i32 0, i32 5
  store i32* @brd_fops, i32** %64, align 8
  %65 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %66 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %67 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %66, i32 0, i32 4
  store %struct.brd_device* %65, %struct.brd_device** %67, align 8
  %68 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %69 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %72 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @GENHD_FL_SUPPRESS_PARTITION_INFO, align 4
  %74 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %75 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %79 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @sprintf(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %84 = load i32, i32* @rd_size, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i32 @set_capacity(%struct.gendisk* %83, i32 %85)
  %87 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  store %struct.brd_device* %87, %struct.brd_device** %2, align 8
  br label %97

88:                                               ; preds = %53
  %89 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %90 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @blk_cleanup_queue(i64 %91)
  br label %93

93:                                               ; preds = %88, %30
  %94 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %95 = call i32 @kfree(%struct.brd_device* %94)
  br label %96

96:                                               ; preds = %93, %10
  store %struct.brd_device* null, %struct.brd_device** %2, align 8
  br label %97

97:                                               ; preds = %96, %54
  %98 = load %struct.brd_device*, %struct.brd_device** %2, align 8
  ret %struct.brd_device* %98
}

declare dso_local %struct.brd_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @blk_alloc_queue(i32) #1

declare dso_local i32 @blk_queue_make_request(i64, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i64, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(i64, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @kfree(%struct.brd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
