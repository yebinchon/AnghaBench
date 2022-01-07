; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_bus_info_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_bus_info_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_mac_info, %struct.ixgbe_adapter* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_adapter = type { i32 }

@ixgbe_bus_type_pci_express = common dso_local global i32 0, align 4
@IXGBE_PCI_LINK_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_bus_info_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_mac_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  store %struct.ixgbe_mac_info* %10, %struct.ixgbe_mac_info** %4, align 8
  %11 = load i32, i32* @ixgbe_bus_type_pci_express, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_PCI_LINK_STATUS, align 4
  %19 = call i32 @pci_read_config_word(i32 %17, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ixgbe_convert_bus_width(i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ixgbe_convert_bus_speed(i32 %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = call i32 %33(%struct.ixgbe_hw.0* %35)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @ixgbe_convert_bus_width(i32) #1

declare dso_local i32 @ixgbe_convert_bus_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
