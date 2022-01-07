; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.igb_adapter = type { i32, i32, i32 }

@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igb_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.igb_adapter* %7, %struct.igb_adapter** %5, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 2
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %25
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %50

43:                                               ; preds = %32
  %44 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 2
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %50, %25
  ret i32 0
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
