; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_set_rgmii_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_set_rgmii_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCH_GBE_MAC_RGMII_CTRL_SETTING = common dso_local global i64 0, align 8
@PCH_GBE_RGMII_RATE_125M = common dso_local global i64 0, align 8
@PCH_GBE_RGMII_RATE_25M = common dso_local global i64 0, align 8
@PCH_GBE_RGMII_RATE_2_5M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, i32, i32)* @pch_gbe_set_rgmii_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @iowrite32(i64 %11, i32* %15)
  ret void
}

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
