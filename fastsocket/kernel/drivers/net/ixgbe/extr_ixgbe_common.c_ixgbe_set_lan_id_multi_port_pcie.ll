; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_bus_info }
%struct.ixgbe_bus_info = type { i32, i32 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FACTPS = common dso_local global i32 0, align 4
@IXGBE_FACTPS_LFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_bus_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  store %struct.ixgbe_bus_info* %6, %struct.ixgbe_bus_info** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_STATUS, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IXGBE_STATUS_LAN_ID, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IXGBE_STATUS_LAN_ID_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load i32, i32* @IXGBE_FACTPS, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IXGBE_FACTPS_LFS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
