; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_close_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_close_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dev_internal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_dev_internal*, %struct.mapped_device*)* @close_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_dev(%struct.dm_dev_internal* %0, %struct.mapped_device* %1) #0 {
  %3 = alloca %struct.dm_dev_internal*, align 8
  %4 = alloca %struct.mapped_device*, align 8
  store %struct.dm_dev_internal* %0, %struct.dm_dev_internal** %3, align 8
  store %struct.mapped_device* %1, %struct.mapped_device** %4, align 8
  %5 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %3, align 8
  %6 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %3, align 8
  %13 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %17 = call i32 @dm_disk(%struct.mapped_device* %16)
  %18 = call i32 @bd_release_from_disk(i32* %15, i32 %17)
  %19 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %3, align 8
  %20 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %3, align 8
  %24 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @blkdev_put(i32* %22, i32 %26)
  %28 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %3, align 8
  %29 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @bd_release_from_disk(i32*, i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blkdev_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
