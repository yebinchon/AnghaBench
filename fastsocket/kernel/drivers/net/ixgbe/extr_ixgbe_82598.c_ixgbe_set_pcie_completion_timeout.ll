; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_pcie_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_pcie_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { i32 }

@IXGBE_GCR = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_MASK = common dso_local global i32 0, align 4
@IXGBE_GCR_CAP_VER2 = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_10ms = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_CONTROL2 = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_CONTROL2_16ms = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_set_pcie_completion_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_GCR, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IXGBE_GCR_CAP_VER2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_10ms, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2, align 4
  %31 = call i32 @pci_read_config_word(i32 %29, i32 %30, i32* %5)
  %32 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2_16ms, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pci_write_config_word(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %26, %22, %16
  %42 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_RESEND, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = load i32, i32* @IXGBE_GCR, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
