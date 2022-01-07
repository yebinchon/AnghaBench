; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_lan_id_multi_port_pcie_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_lan_id_multi_port_pcie_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_bus_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_bus_info = type { i64 }

@IXGBE_PCIE_GENERAL_PTR = common dso_local global i64 0, align 8
@IXGBE_PCIE_CTRL2 = common dso_local global i64 0, align 8
@IXGBE_PCIE_CTRL2_LAN_DISABLE = common dso_local global i32 0, align 4
@IXGBE_PCIE_CTRL2_DISABLE_SELECT = common dso_local global i32 0, align 4
@IXGBE_PCIE_CTRL2_DUMMY_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_set_lan_id_multi_port_pcie_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_lan_id_multi_port_pcie_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_bus_info* %7, %struct.ixgbe_bus_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = call i32 @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw* %8)
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = load i64, i64* @IXGBE_PCIE_GENERAL_PTR, align 8
  %18 = call i32 %14(%struct.ixgbe_hw.0* %16, i64 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %28, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = bitcast %struct.ixgbe_hw* %30 to %struct.ixgbe_hw.0*
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @IXGBE_PCIE_CTRL2, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 %29(%struct.ixgbe_hw.0* %31, i64 %35, i32* %5)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IXGBE_PCIE_CTRL2_LAN_DISABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IXGBE_PCIE_CTRL2_DISABLE_SELECT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IXGBE_PCIE_CTRL2_DUMMY_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %41, %24
  br label %55

55:                                               ; preds = %54, %21, %1
  ret void
}

declare dso_local i32 @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
