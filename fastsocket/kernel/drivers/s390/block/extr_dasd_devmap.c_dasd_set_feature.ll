; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_set_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_devmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dasd_devmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_set_feature(%struct.ccw_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_devmap*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = call i32 @dev_name(i32* %10)
  %12 = call %struct.dasd_devmap* @dasd_find_busid(i32 %11)
  store %struct.dasd_devmap* %12, %struct.dasd_devmap** %8, align 8
  %13 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_devmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.dasd_devmap* %17)
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %36

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %33 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %38 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %43 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dasd_devmap*, %struct.dasd_devmap** %8, align 8
  %46 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
