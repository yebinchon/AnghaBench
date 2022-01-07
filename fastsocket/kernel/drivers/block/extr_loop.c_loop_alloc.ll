; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, %struct.TYPE_4__*, i32, i32, i32*, i32, %struct.gendisk*, i32 }
%struct.TYPE_4__ = type { %struct.loop_device* }
%struct.gendisk = type { i32, i32, %struct.TYPE_4__*, %struct.loop_device*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i32 0, align 4
@loop_make_request = common dso_local global i32 0, align 4
@part_shift = common dso_local global i32 0, align 4
@LOOP_MAJOR = common dso_local global i32 0, align 4
@lo_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"loop%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loop_device* (i32)* @loop_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loop_device* @loop_alloc(i32 %0) #0 {
  %2 = alloca %struct.loop_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.loop_device* @kzalloc(i32 56, i32 %6)
  store %struct.loop_device* %7, %struct.loop_device** %4, align 8
  %8 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %9 = icmp ne %struct.loop_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %90

11:                                               ; preds = %1
  %12 = load i32, i32* @Lo_unbound, align 4
  %13 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %14 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_4__* @blk_alloc_queue(i32 %15)
  %17 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %18 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %17, i32 0, i32 1
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %20 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %87

24:                                               ; preds = %11
  %25 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %26 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* @loop_make_request, align 4
  %29 = call i32 @blk_queue_make_request(%struct.TYPE_4__* %27, i32 %28)
  %30 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %31 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %32 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.loop_device* %30, %struct.loop_device** %34, align 8
  %35 = load i32, i32* @part_shift, align 4
  %36 = shl i32 1, %35
  %37 = call %struct.gendisk* @alloc_disk(i32 %36)
  %38 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %39 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %38, i32 0, i32 6
  store %struct.gendisk* %37, %struct.gendisk** %39, align 8
  store %struct.gendisk* %37, %struct.gendisk** %5, align 8
  %40 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %41 = icmp ne %struct.gendisk* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  br label %82

43:                                               ; preds = %24
  %44 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %45 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %44, i32 0, i32 5
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %49 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %51 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %53 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %52, i32 0, i32 3
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %56 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load i32, i32* @LOOP_MAJOR, align 4
  %59 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %60 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @part_shift, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %67 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %66, i32 0, i32 4
  store i32* @lo_fops, i32** %67, align 8
  %68 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %69 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %70 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %69, i32 0, i32 3
  store %struct.loop_device* %68, %struct.loop_device** %70, align 8
  %71 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %72 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %75 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %74, i32 0, i32 2
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %75, align 8
  %76 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @sprintf(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  store %struct.loop_device* %81, %struct.loop_device** %2, align 8
  br label %91

82:                                               ; preds = %42
  %83 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %84 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @blk_cleanup_queue(%struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %82, %23
  %88 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %89 = call i32 @kfree(%struct.loop_device* %88)
  br label %90

90:                                               ; preds = %87, %10
  store %struct.loop_device* null, %struct.loop_device** %2, align 8
  br label %91

91:                                               ; preds = %90, %43
  %92 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  ret %struct.loop_device* %92
}

declare dso_local %struct.loop_device* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @blk_alloc_queue(i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.loop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
