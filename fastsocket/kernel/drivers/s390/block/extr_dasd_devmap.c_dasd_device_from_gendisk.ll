; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_device_from_gendisk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_device_from_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.gendisk = type { %struct.dasd_devmap* }
%struct.dasd_devmap = type { %struct.dasd_device* }

@dasd_devmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_device* @dasd_device_from_gendisk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_devmap*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %9 = icmp ne %struct.dasd_devmap* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dasd_device* null, %struct.dasd_device** %2, align 8
  br label %32

11:                                               ; preds = %1
  store %struct.dasd_device* null, %struct.dasd_device** %4, align 8
  %12 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %13 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load %struct.dasd_devmap*, %struct.dasd_devmap** %14, align 8
  store %struct.dasd_devmap* %15, %struct.dasd_devmap** %5, align 8
  %16 = load %struct.dasd_devmap*, %struct.dasd_devmap** %5, align 8
  %17 = icmp ne %struct.dasd_devmap* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.dasd_devmap*, %struct.dasd_devmap** %5, align 8
  %20 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %19, i32 0, i32 0
  %21 = load %struct.dasd_device*, %struct.dasd_device** %20, align 8
  %22 = icmp ne %struct.dasd_device* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.dasd_devmap*, %struct.dasd_devmap** %5, align 8
  %25 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %24, i32 0, i32 0
  %26 = load %struct.dasd_device*, %struct.dasd_device** %25, align 8
  store %struct.dasd_device* %26, %struct.dasd_device** %4, align 8
  %27 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %28 = call i32 @dasd_get_device(%struct.dasd_device* %27)
  br label %29

29:                                               ; preds = %23, %18, %11
  %30 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  store %struct.dasd_device* %31, %struct.dasd_device** %2, align 8
  br label %32

32:                                               ; preds = %29, %10
  %33 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  ret %struct.dasd_device* %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
