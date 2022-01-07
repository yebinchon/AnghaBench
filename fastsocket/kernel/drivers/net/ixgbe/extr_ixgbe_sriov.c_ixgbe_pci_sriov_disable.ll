; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_pci_sriov_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_pci_sriov_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { i64 }

@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ixgbe_pci_sriov_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_pci_sriov_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %3, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = call i32 @ixgbe_disable_sriov(%struct.ixgbe_adapter* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64, i64* @IXGBE_FLAG_VMDQ_ENABLED, align 8
  %23 = xor i64 %22, -1
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %21, %15, %1
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ixgbe_disable_sriov(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
