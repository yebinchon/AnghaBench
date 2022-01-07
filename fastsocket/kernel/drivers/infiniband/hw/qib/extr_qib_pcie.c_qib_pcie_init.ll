; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"pci enable failed: error %d\0A\00", align 1
@QIB_DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"pci_request_regions fails: err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to set DMA mask: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to set DMA consistent mask: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to enable pcie error reporting: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_pcie_init(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_enable_device(%struct.pci_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @qib_early_err(i32* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* @QIB_DRV_NAME, align 4
  %19 = call i32 @pci_request_regions(%struct.pci_dev* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @qib_devinfo(%struct.pci_dev* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %72

27:                                               ; preds = %16
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i32 @DMA_BIT_MASK(i32 64)
  %30 = call i32 @pci_set_dma_mask(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @DMA_BIT_MASK(i32 32)
  %36 = call i32 @pci_set_dma_mask(%struct.pci_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @qib_devinfo(%struct.pci_dev* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %72

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = call i32 @DMA_BIT_MASK(i32 32)
  %46 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = call i32 @DMA_BIT_MASK(i32 64)
  %50 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @qib_early_err(i32* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %72

59:                                               ; preds = %51
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = call i32 @pci_set_master(%struct.pci_dev* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @qib_early_err(i32* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %59
  br label %77

72:                                               ; preds = %54, %39, %22
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = call i32 @pci_disable_device(%struct.pci_dev* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = call i32 @pci_release_regions(%struct.pci_dev* %75)
  br label %77

77:                                               ; preds = %72, %71, %10
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @qib_early_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @qib_devinfo(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
