; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_clr_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_clr_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, i64, i32*, i32*, i32*, i32*, %struct.file*, %struct.TYPE_2__*, i32, i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.block_device = type { i32 }

@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Lo_rundown = common dso_local global i64 0, align 8
@LO_KEY_SIZE = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@max_part = common dso_local global i64 0, align 8
@BLKRRPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.block_device*)* @loop_clr_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_clr_fd(%struct.loop_device* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %8 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %9 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %8, i32 0, i32 16
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %12 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %15 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @Lo_bound, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %2
  %23 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %24 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %22
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = icmp eq %struct.file* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %132

36:                                               ; preds = %30
  %37 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %38 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %37, i32 0, i32 18
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i64, i64* @Lo_rundown, align 8
  %41 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %42 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %44 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %43, i32 0, i32 18
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %47 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kthread_stop(i32* %48)
  %50 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %51 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %50, i32 0, i32 17
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %55 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %54, i32 0, i32 16
  store %struct.file* null, %struct.file** %55, align 8
  %56 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %57 = call i32 @loop_release_xfer(%struct.loop_device* %56)
  %58 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %59 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %58, i32 0, i32 15
  store i32* null, i32** %59, align 8
  %60 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %61 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %60, i32 0, i32 14
  store i32* null, i32** %61, align 8
  %62 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %63 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %62, i32 0, i32 13
  store i32* null, i32** %63, align 8
  %64 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %65 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %64, i32 0, i32 12
  store i32* null, i32** %65, align 8
  %66 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %67 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %69 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %71 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %73 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %75 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %74, i32 0, i32 7
  store i32* null, i32** %75, align 8
  %76 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %77 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LO_KEY_SIZE, align 4
  %80 = call i32 @memset(i32 %78, i32 0, i32 %79)
  %81 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %82 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LO_NAME_SIZE, align 4
  %85 = call i32 @memset(i32 %83, i32 0, i32 %84)
  %86 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %87 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @LO_NAME_SIZE, align 4
  %90 = call i32 @memset(i32 %88, i32 0, i32 %89)
  %91 = load %struct.block_device*, %struct.block_device** %5, align 8
  %92 = icmp ne %struct.block_device* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %36
  %94 = load %struct.block_device*, %struct.block_device** %5, align 8
  %95 = call i32 @invalidate_bdev(%struct.block_device* %94)
  br label %96

96:                                               ; preds = %93, %36
  %97 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %98 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @set_capacity(i32 %99, i32 0)
  %101 = load %struct.block_device*, %struct.block_device** %5, align 8
  %102 = icmp ne %struct.block_device* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.block_device*, %struct.block_device** %5, align 8
  %105 = call i32 @bd_set_size(%struct.block_device* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.file*, %struct.file** %6, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mapping_set_gfp_mask(i32 %109, i32 %110)
  %112 = load i64, i64* @Lo_unbound, align 8
  %113 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %114 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @THIS_MODULE, align 4
  %116 = call i32 @module_put(i32 %115)
  %117 = load i64, i64* @max_part, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = load %struct.block_device*, %struct.block_device** %5, align 8
  %121 = icmp ne %struct.block_device* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.block_device*, %struct.block_device** %5, align 8
  %124 = load i32, i32* @BLKRRPART, align 4
  %125 = call i32 @ioctl_by_bdev(%struct.block_device* %123, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %122, %119, %106
  %127 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %128 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %127, i32 0, i32 2
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.file*, %struct.file** %6, align 8
  %131 = call i32 @fput(%struct.file* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %33, %27, %19
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @loop_release_xfer(%struct.loop_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @invalidate_bdev(%struct.block_device*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @ioctl_by_bdev(%struct.block_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
