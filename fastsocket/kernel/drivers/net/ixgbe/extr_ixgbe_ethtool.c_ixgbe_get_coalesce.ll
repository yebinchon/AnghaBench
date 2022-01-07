; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ixgbe_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %6, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 2
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %66

47:                                               ; preds = %36, %26
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %65

58:                                               ; preds = %47
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 2
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
