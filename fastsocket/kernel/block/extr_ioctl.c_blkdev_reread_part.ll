; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_ioctl.c_blkdev_reread_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_ioctl.c_blkdev_reread_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.block_device*, %struct.gendisk* }
%struct.gendisk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*)* @blkdev_reread_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_reread_part(%struct.block_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 2
  %8 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  store %struct.gendisk* %8, %struct.gendisk** %4, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = call i32 @disk_partitionable(%struct.gendisk* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.block_device*, %struct.block_device** %3, align 8
  %14 = load %struct.block_device*, %struct.block_device** %3, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 1
  %16 = load %struct.block_device*, %struct.block_device** %15, align 8
  %17 = icmp ne %struct.block_device* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %12
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load %struct.block_device*, %struct.block_device** %3, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_trylock(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %38 = load %struct.block_device*, %struct.block_device** %3, align 8
  %39 = call i32 @rescan_partitions(%struct.gendisk* %37, %struct.block_device* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.block_device*, %struct.block_device** %3, align 8
  %41 = getelementptr inbounds %struct.block_device, %struct.block_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %33, %25, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @disk_partitionable(%struct.gendisk*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @rescan_partitions(%struct.gendisk*, %struct.block_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
