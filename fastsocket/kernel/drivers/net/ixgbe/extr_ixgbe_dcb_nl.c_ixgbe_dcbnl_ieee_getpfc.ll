; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_getpfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_getpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i32*, i32*, i32, i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ieee_pfc* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @ixgbe_dcbnl_ieee_getpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_getpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ieee_pfc*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %6, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 2
  %13 = load %struct.ieee_pfc*, %struct.ieee_pfc** %12, align 8
  store %struct.ieee_pfc* %13, %struct.ieee_pfc** %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %20 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %22 = icmp ne %struct.ieee_pfc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %26 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %29 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %31 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %34 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %36 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %39 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %73, %24
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %54 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %44
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %40

76:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
