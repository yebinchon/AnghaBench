; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__, %struct.ixgbe_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_adapter = type { i32 }

@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_GIO_DIS = common dso_local global i32 0, align 4
@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_GIO = common dso_local global i32 0, align 4
@IXGBE_PCI_MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"GIO Master Disable bit didn't clear - requesting resets\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_STATUS = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"PCIe transaction pending bit also did not clear.\0A\00", align 1
@IXGBE_ERR_MASTER_REQUESTS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_disable_pcie_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = load i32, i32* @IXGBE_CTRL, align 4
  %12 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %13 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i32, i32* @IXGBE_STATUS, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  %17 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %72

21:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = call i32 @udelay(i32 100)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i32, i32* @IXGBE_STATUS, align 4
  %30 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %29)
  %31 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %72

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = call i32 @hw_dbg(%struct.ixgbe_hw* %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %65, %39
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = call i32 @udelay(i32 100)
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS, align 4
  %58 = call i32 @pci_read_config_word(i32 %56, i32 %57, i32* %6)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %72

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %70 = call i32 @hw_dbg(%struct.ixgbe_hw* %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @IXGBE_ERR_MASTER_REQUESTS_PENDING, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %63, %34, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
