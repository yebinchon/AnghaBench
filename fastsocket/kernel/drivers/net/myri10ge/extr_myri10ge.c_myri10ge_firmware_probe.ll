; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_firmware_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_firmware_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Couldn't read max read req size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Max Read Request size != 4096 (%d)\0A\00", align 1
@myri10ge_fw_aligned = common dso_local global i32 0, align 4
@MXGEFW_CMD_UNALIGNED_TEST = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"DMA test failed: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Falling back to ethp! Please install up to date fw\0A\00", align 1
@myri10ge_fw_unaligned = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_firmware_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_firmware_probe(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %6 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %7 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %12 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %11, i32 0, i32 0
  store i32 4096, i32* %12, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pcie_get_readrq(%struct.pci_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %66

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 4096
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %29 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %28, i32 0, i32 0
  store i32 2048, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @myri10ge_fw_aligned, align 4
  %32 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %33 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %35 = call i32 @myri10ge_load_firmware(%struct.myri10ge_priv* %34, i32 1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %66

39:                                               ; preds = %30
  %40 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %41 = call i32 @myri10ge_enable_ecrc(%struct.myri10ge_priv* %40)
  %42 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %43 = load i32, i32* @MXGEFW_CMD_UNALIGNED_TEST, align 4
  %44 = call i32 @myri10ge_dma_test(%struct.myri10ge_priv* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %72

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @E2BIG, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %38, %17
  %67 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %68 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %67, i32 0, i32 0
  store i32 2048, i32* %68, align 8
  %69 = load i32, i32* @myri10ge_fw_unaligned, align 4
  %70 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %71 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %47
  ret void
}

declare dso_local i32 @pcie_get_readrq(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @myri10ge_load_firmware(%struct.myri10ge_priv*, i32) #1

declare dso_local i32 @myri10ge_enable_ecrc(%struct.myri10ge_priv*) #1

declare dso_local i32 @myri10ge_dma_test(%struct.myri10ge_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
