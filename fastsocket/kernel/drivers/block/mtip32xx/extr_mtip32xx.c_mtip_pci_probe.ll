; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.driver_data = type { i32, i32, i32, %struct.pci_dev*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate memory for driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to enable device\0A\00", align 1
@MTIP_ABAR = common dso_local global i32 0, align 4
@MTIP_DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to map regions\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"64-bit DMA enable failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to enable MSI interrupt.\0A\00", align 1
@mtip_major = common dso_local global i32 0, align 4
@instance = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to initialize block layer\0A\00", align 1
@MTIP_FTL_REBUILD_MAGIC = common dso_local global i32 0, align 4
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@dev_lock = common dso_local global i32 0, align 4
@online_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mtip_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.driver_data*, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.driver_data* null, %struct.driver_data** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.driver_data* @kzalloc(i32 32, i32 %9)
  store %struct.driver_data* %10, %struct.driver_data** %7, align 8
  %11 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %12 = icmp eq %struct.driver_data* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %137

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %20, %struct.driver_data* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pcim_enable_device(%struct.pci_dev* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %129

31:                                               ; preds = %19
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* @MTIP_ABAR, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @MTIP_DRV_NAME, align 4
  %36 = call i32 @pcim_iomap_regions(%struct.pci_dev* %32, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %129

43:                                               ; preds = %31
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @DMA_BIT_MASK(i32 64)
  %46 = call i32 @pci_set_dma_mask(%struct.pci_dev* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i32 @DMA_BIT_MASK(i32 64)
  %51 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @DMA_BIT_MASK(i32 32)
  %57 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %124

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_set_master(%struct.pci_dev* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @pci_enable_msi(%struct.pci_dev* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %121

77:                                               ; preds = %66
  %78 = load i32, i32* @mtip_major, align 4
  %79 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %80 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @instance, align 4
  %82 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %83 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 3
  store %struct.pci_dev* %84, %struct.pci_dev** %86, align 8
  %87 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %88 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %87, i32 0, i32 0
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %91 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %90, i32 0, i32 2
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %94 = call i32 @mtip_block_initialize(%struct.driver_data* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %121

101:                                              ; preds = %77
  %102 = load i32, i32* @instance, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @instance, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @MTIP_FTL_REBUILD_MAGIC, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %109 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %110 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %113

112:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %107
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_lock_irqsave(i32* @dev_lock, i64 %114)
  %116 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %117 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %116, i32 0, i32 0
  %118 = call i32 @list_add(i32* %117, i32* @online_list)
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* @dev_lock, i64 %119)
  br label %135

121:                                              ; preds = %97, %73
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_disable_msi(%struct.pci_dev* %122)
  br label %124

124:                                              ; preds = %121, %60
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = load i32, i32* @MTIP_ABAR, align 4
  %127 = shl i32 1, %126
  %128 = call i32 @pcim_iounmap_regions(%struct.pci_dev* %125, i32 %127)
  br label %129

129:                                              ; preds = %124, %39, %27
  %130 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %131 = call i32 @kfree(%struct.driver_data* %130)
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = call i32 @pci_set_drvdata(%struct.pci_dev* %132, %struct.driver_data* null)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %137

135:                                              ; preds = %113
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %129, %13
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.driver_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.driver_data*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtip_block_initialize(%struct.driver_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iounmap_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
