; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_free_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.block2mtd_dev* }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block2mtd_dev*)* @block2mtd_free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block2mtd_free_device(%struct.block2mtd_dev* %0) #0 {
  %2 = alloca %struct.block2mtd_dev*, align 8
  store %struct.block2mtd_dev* %0, %struct.block2mtd_dev** %2, align 8
  %3 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %4 = icmp ne %struct.block2mtd_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %8 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %9, align 8
  %11 = call i32 @kfree(%struct.block2mtd_dev* %10)
  %12 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %13 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %6
  %17 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %18 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @invalidate_mapping_pages(i32 %23, i32 0, i32 -1)
  %25 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %26 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @FMODE_READ, align 4
  %29 = load i32, i32* @FMODE_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @close_bdev_exclusive(%struct.TYPE_6__* %27, i32 %30)
  br label %32

32:                                               ; preds = %16, %6
  %33 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %2, align 8
  %34 = call i32 @kfree(%struct.block2mtd_dev* %33)
  br label %35

35:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @kfree(%struct.block2mtd_dev*) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @close_bdev_exclusive(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
