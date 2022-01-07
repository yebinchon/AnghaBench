; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_get_bus_info_pcie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_get_bus_info_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_adapter*, %struct.e1000_bus_info, %struct.e1000_mac_info }
%struct.e1000_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_bus_info = type { i32 }
%struct.e1000_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@e1000_bus_width_unknown = common dso_local global i32 0, align 4
@PCIE_LINK_STATUS = common dso_local global i32 0, align 4
@PCIE_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_get_bus_info_pcie(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_bus_info*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 2
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_bus_info* %11, %struct.e1000_bus_info** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %13, align 8
  store %struct.e1000_adapter* %14, %struct.e1000_adapter** %5, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @e1000_bus_width_unknown, align 4
  %24 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PCIE_LINK_STATUS, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @pci_read_config_word(%struct.TYPE_4__* %29, i32 %32, i32* %6)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PCIE_LINK_WIDTH_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @PCIE_LINK_WIDTH_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %26, %22
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.0*
  %48 = call i32 %45(%struct.e1000_hw.0* %47)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
