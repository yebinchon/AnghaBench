; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_del_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_del_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_sysfs_del_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_sysfs_del_adapter(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = icmp eq %struct.ixgbe_adapter* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %49

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @device_remove_file(i32* %19, i32* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @kfree(%struct.TYPE_6__* %36)
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @hwmon_device_unregister(i64 %47)
  br label %49

49:                                               ; preds = %6, %43, %32
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
