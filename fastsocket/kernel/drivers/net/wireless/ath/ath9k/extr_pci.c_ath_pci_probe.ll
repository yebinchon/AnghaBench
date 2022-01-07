; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.ath_softc = type { i32, i64, i32, i32, i32*, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32, %struct.ath_softc* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"32-bit DMA not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"32-bit DMA consistent DMA enable failed\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ath9k\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"PCI memory region reserve error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ath9k_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"No memory for ieee80211_hw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SC_OP_INVALID = common dso_local global i32 0, align 4
@ath_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@ath_pci_bus_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to initialize device\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s mem=0x%lx, irq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ath_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i64 @pcim_enable_device(%struct.pci_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %174

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @DMA_BIT_MASK(i32 32)
  %21 = call i32 @pci_set_dma_mask(%struct.pci_dev* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %174

27:                                               ; preds = %18
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %174

36:                                               ; preds = %27
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %39 = call i32 @pci_read_config_byte(%struct.pci_dev* %37, i32 %38, i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* @L1_CACHE_BYTES, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @pci_write_config_byte(%struct.pci_dev* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %54 = call i32 @pci_write_config_byte(%struct.pci_dev* %52, i32 %53, i32 168)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_set_master(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_read_config_dword(%struct.pci_dev* %57, i32 64, i32* %9)
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 65280
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, -65281
  %66 = call i32 @pci_write_config_dword(%struct.pci_dev* %63, i32 64, i32 %65)
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @BIT(i32 0)
  %70 = call i32 @pcim_iomap_regions(%struct.pci_dev* %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %174

79:                                               ; preds = %67
  %80 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 40, i32* @ath9k_ops)
  store %struct.ieee80211_hw* %80, %struct.ieee80211_hw** %7, align 8
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %82 = icmp ne %struct.ieee80211_hw* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 1
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %174

89:                                               ; preds = %79
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %90, i32* %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %96 = call i32 @pci_set_drvdata(%struct.pci_dev* %94, %struct.ieee80211_hw* %95)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %97, i32 0, i32 1
  %99 = load %struct.ath_softc*, %struct.ath_softc** %98, align 8
  store %struct.ath_softc* %99, %struct.ath_softc** %6, align 8
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %101 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 5
  store %struct.ieee80211_hw* %100, %struct.ieee80211_hw** %102, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 1
  %105 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %106 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = call i64* @pcim_iomap_table(%struct.pci_dev* %107)
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @SC_OP_INVALID, align 4
  %114 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %115 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %114, i32 0, i32 3
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ath_isr, align 4
  %121 = load i32, i32* @IRQF_SHARED, align 4
  %122 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %123 = call i32 @request_irq(i32 %119, i32 %120, i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ath_softc* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %89
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 1
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %170

130:                                              ; preds = %89
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %135 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %137 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %140 = call i32 @ath9k_init_device(i32 %138, %struct.ath_softc* %139, i32* @ath_pci_bus_ops)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %130
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 1
  %146 = call i32 @dev_err(i32* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %164

147:                                              ; preds = %130
  %148 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %149 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %152 = call i32 @ath9k_hw_name(i32 %150, i8* %151, i32 64)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %157 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %158 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @wiphy_info(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %156, i64 %159, i32 %162)
  store i32 0, i32* %3, align 4
  br label %174

164:                                              ; preds = %143
  %165 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %166 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %169 = call i32 @free_irq(i32 %167, %struct.ath_softc* %168)
  br label %170

170:                                              ; preds = %164, %126
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %172 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %147, %83, %73, %33, %24, %15
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ieee80211_hw*) #1

declare dso_local i64* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_device(i32, %struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_hw_name(i32, i8*, i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ath_softc*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
