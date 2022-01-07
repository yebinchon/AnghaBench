; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00pci.c_rt2x00pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00pci.c_rt2x00pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.rt2x00_ops = type { i32 }
%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_2__, i32, i32, %struct.ieee80211_hw*, %struct.rt2x00_ops*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Enable device failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PCI request regions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MWI not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"PCI DMA not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to allocate hardware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_PCIE = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_PCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00pci_probe(%struct.pci_dev* %0, %struct.rt2x00_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rt2x00_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.rt2x00_ops* %1, %struct.rt2x00_ops** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %127

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_name(%struct.pci_dev* %19)
  %21 = call i32 @pci_request_regions(%struct.pci_dev* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %121

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_set_master(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i64 @pci_set_mwi(%struct.pci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = call i32 @DMA_BIT_MASK(i32 32)
  %38 = call i64 @dma_set_mask(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %118

44:                                               ; preds = %34
  %45 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %46 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 40, i32 %47)
  store %struct.ieee80211_hw* %48, %struct.ieee80211_hw** %6, align 8
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %50 = icmp ne %struct.ieee80211_hw* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %118

55:                                               ; preds = %44
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %58 = call i32 @pci_set_drvdata(%struct.pci_dev* %56, %struct.ieee80211_hw* %57)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %59, i32 0, i32 0
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %60, align 8
  store %struct.rt2x00_dev* %61, %struct.rt2x00_dev** %7, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 1
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 4
  store %struct.rt2x00_ops* %66, %struct.rt2x00_ops** %68, align 8
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %71 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %70, i32 0, i32 3
  store %struct.ieee80211_hw* %69, %struct.ieee80211_hw** %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pci_name(%struct.pci_dev* %77)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %80 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i64 @pci_is_pcie(%struct.pci_dev* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %55
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %86 = load i32, i32* @RT2X00_CHIP_INTF_PCIE, align 4
  %87 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %85, i32 %86)
  br label %92

88:                                               ; preds = %55
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %90 = load i32, i32* @RT2X00_CHIP_INTF_PCI, align 4
  %91 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %94 = call i32 @rt2x00pci_alloc_reg(%struct.rt2x00_dev* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %115

98:                                               ; preds = %92
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = load i32, i32* @PCI_DEVICE_ID, align 4
  %101 = call i32 @pci_read_config_word(%struct.pci_dev* %99, i32 %100, i32* %9)
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %104 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %107 = call i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %112

111:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %127

112:                                              ; preds = %110
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %114 = call i32 @rt2x00pci_free_reg(%struct.rt2x00_dev* %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %117 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %116)
  br label %118

118:                                              ; preds = %115, %51, %40
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = call i32 @pci_release_regions(%struct.pci_dev* %119)
  br label %121

121:                                              ; preds = %118, %24
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_disable_device(%struct.pci_dev* %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = call i32 @pci_set_drvdata(%struct.pci_dev* %124, %struct.ieee80211_hw* null)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %111, %14
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_mwi(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ieee80211_hw*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00pci_alloc_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00pci_free_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
