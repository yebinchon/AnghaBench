; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_raw.c_raw_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_raw.c_raw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.block_device* }
%struct.block_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.block_device*, %struct.TYPE_8__, i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@raw_ctl_fops = common dso_local global i32 0, align 4
@raw_mutex = common dso_local global i32 0, align 4
@raw_devices = common dso_local global %struct.TYPE_9__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @raw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 5
  store i32* @raw_ctl_fops, i32** %15, align 8
  store i32 0, i32* %3, align 4
  br label %110

16:                                               ; preds = %2
  %17 = call i32 (...) @lock_kernel()
  %18 = call i32 @mutex_lock(i32* @raw_mutex)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @raw_devices, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.block_device*, %struct.block_device** %23, align 8
  store %struct.block_device* %24, %struct.block_device** %7, align 8
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.block_device*, %struct.block_device** %7, align 8
  %28 = icmp ne %struct.block_device* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %106

30:                                               ; preds = %16
  %31 = load %struct.block_device*, %struct.block_device** %7, align 8
  %32 = getelementptr inbounds %struct.block_device, %struct.block_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @igrab(%struct.TYPE_10__* %33)
  %35 = load %struct.block_device*, %struct.block_device** %7, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @blkdev_get(%struct.block_device* %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %106

43:                                               ; preds = %30
  %44 = load %struct.block_device*, %struct.block_device** %7, align 8
  %45 = call i32 @bd_claim(%struct.block_device* %44, i32 (%struct.inode*, %struct.file*)* @raw_open)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %100

49:                                               ; preds = %43
  %50 = load %struct.block_device*, %struct.block_device** %7, align 8
  %51 = load %struct.block_device*, %struct.block_device** %7, align 8
  %52 = call i32 @bdev_logical_block_size(%struct.block_device* %51)
  %53 = call i32 @set_blocksize(%struct.block_device* %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %97

57:                                               ; preds = %49
  %58 = load i32, i32* @O_DIRECT, align 4
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.block_device*, %struct.block_device** %7, align 8
  %64 = getelementptr inbounds %struct.block_device, %struct.block_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @raw_devices, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %91

78:                                               ; preds = %57
  %79 = load %struct.block_device*, %struct.block_device** %7, align 8
  %80 = getelementptr inbounds %struct.block_device, %struct.block_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %78, %57
  %92 = load %struct.block_device*, %struct.block_device** %7, align 8
  %93 = load %struct.file*, %struct.file** %5, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 1
  store %struct.block_device* %92, %struct.block_device** %94, align 8
  %95 = call i32 @mutex_unlock(i32* @raw_mutex)
  %96 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %110

97:                                               ; preds = %56
  %98 = load %struct.block_device*, %struct.block_device** %7, align 8
  %99 = call i32 @bd_release(%struct.block_device* %98)
  br label %100

100:                                              ; preds = %97, %48
  %101 = load %struct.block_device*, %struct.block_device** %7, align 8
  %102 = load %struct.file*, %struct.file** %5, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @blkdev_put(%struct.block_device* %101, i32 %104)
  br label %106

106:                                              ; preds = %100, %42, %29
  %107 = call i32 @mutex_unlock(i32* @raw_mutex)
  %108 = call i32 (...) @unlock_kernel()
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %91, %13
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @igrab(%struct.TYPE_10__*) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32) #1

declare dso_local i32 @bd_claim(%struct.block_device*, i32 (%struct.inode*, %struct.file*)*) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @bd_release(%struct.block_device*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
