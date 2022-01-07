; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_reset_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { %struct.atl1e_adapter* }
%struct.atl1e_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_REG_COMMAND = common dso_local global i32 0, align 4
@CMD_IO_SPACE = common dso_local global i32 0, align 4
@CMD_MEMORY_SPACE = common dso_local global i32 0, align 4
@CMD_BUS_MASTER = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_LED_MODE = common dso_local global i32 0, align 4
@MASTER_CTRL_SOFT_RST = common dso_local global i32 0, align 4
@AT_HW_MAX_IDLE_DELAY = common dso_local global i32 0, align 4
@REG_IDLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"MAC state machine cann't be idle since disabled for 10ms second\0A\00", align 1
@AT_ERR_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_reset_hw(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %9 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %10 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %9, i32 0, i32 0
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %10, align 8
  store %struct.atl1e_adapter* %11, %struct.atl1e_adapter** %4, align 8
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @PCI_REG_COMMAND, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CMD_IO_SPACE, align 4
  %20 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CMD_BUS_MASTER, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = load i32, i32* @CMD_IO_SPACE, align 4
  %26 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CMD_BUS_MASTER, align 4
  %29 = or i32 %27, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %1
  %32 = load i32, i32* @CMD_IO_SPACE, align 4
  %33 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CMD_BUS_MASTER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* @PCI_REG_COMMAND, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pci_write_config_word(%struct.pci_dev* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %1
  %44 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %45 = load i32, i32* @REG_MASTER_CTRL, align 4
  %46 = load i32, i32* @MASTER_CTRL_LED_MODE, align 4
  %47 = load i32, i32* @MASTER_CTRL_SOFT_RST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %44, i32 %45, i32 %48)
  %50 = call i32 (...) @wmb()
  %51 = call i32 @msleep(i32 1)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %66, %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @AT_HW_MAX_IDLE_DELAY, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %58 = load i32, i32* @REG_IDLE_STATUS, align 4
  %59 = call i64 @AT_READ_REG(%struct.atl1e_hw* %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %69

63:                                               ; preds = %56
  %64 = call i32 @msleep(i32 1)
  %65 = call i32 (...) @cpu_relax()
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %52

69:                                               ; preds = %62, %52
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @AT_HW_MAX_IDLE_DELAY, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @AT_ERR_TIMEOUT, align 4
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
