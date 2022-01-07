; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_4__ = type { i32 }

@e1000_phy_ife = common dso_local global i32 0, align 4
@IFE_PHY_SPECIAL_CONTROL_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e1000_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 0
  store %struct.e1000_hw* %11, %struct.e1000_hw** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %76 [
    i32 131, label %13
    i32 130, label %30
    i32 128, label %58
    i32 129, label %67
  ]

13:                                               ; preds = %2
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %17, align 8
  %19 = icmp ne i32 (%struct.e1000_hw.3*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %77

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.3*
  %29 = call i32 %26(%struct.e1000_hw.3* %28)
  br label %76

30:                                               ; preds = %2
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @e1000_phy_ife, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %39 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL_LED, align 4
  %40 = call i32 @e1e_wphy(%struct.e1000_hw* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.0*
  %49 = call i32 %46(%struct.e1000_hw.0* %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.2*
  %57 = call i32 %54(%struct.e1000_hw.2* %56)
  br label %76

58:                                               ; preds = %2
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %62, align 8
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %65 = bitcast %struct.e1000_hw* %64 to %struct.e1000_hw.1*
  %66 = call i32 %63(%struct.e1000_hw.1* %65)
  br label %76

67:                                               ; preds = %2
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.0*
  %75 = call i32 %72(%struct.e1000_hw.0* %74)
  br label %76

76:                                               ; preds = %2, %67, %58, %41, %21
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
