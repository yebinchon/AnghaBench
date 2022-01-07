; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_on_hold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_on_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ATH_AHB = common dso_local global i64 0, align 8
@AR5K_PM_AWAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to wakeup the MAC Chip\0A\00", align 1
@AR5K_RESET_CTL_PCI = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_RESET_CTL_PCU = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_MAC = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_DMA = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_PHY = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_BASEBAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to put device on warm reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to put device on hold\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_on_hold(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %10)
  %12 = load i64, i64* @ATH_AHB, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = load i32, i32* @AR5K_PM_AWAKE, align 4
  %18 = call i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw* %16, i32 %17, i32 1, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %83

25:                                               ; preds = %15
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i64 @pci_is_pcie(%struct.pci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %35

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @AR5K_RESET_CTL_PCI, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AR5K_AR5210, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %44 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %45 = load i32, i32* @AR5K_RESET_CTL_MAC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AR5K_RESET_CTL_DMA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AR5K_RESET_CTL_PHY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AR5K_RESET_CTL_PCI, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %43, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = call i32 @usleep_range(i32 2000, i32 2500)
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %58 = load i32, i32* @AR5K_RESET_CTL_BASEBAND, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %56, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %42
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %68 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %83

71:                                               ; preds = %63
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %73 = load i32, i32* @AR5K_PM_AWAKE, align 4
  %74 = call i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw* %72, i32 %73, i32 1, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %79 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %77, %66, %21, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @ath5k_get_bus_type(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @ath5k_hw_nic_reset(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
