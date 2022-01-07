; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_pci_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to enable adapter: error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pci_set_consistent_dma_mask failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pci_set_dma_mask failed\0A\00", align 1
@vmxnet3_driver_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to request region for adapter: error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to map bar0\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed to map bar1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*, i32*)* @vmxnet3_alloc_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_alloc_pci_resources(%struct.vmxnet3_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %14 = call i32 @pci_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %120

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %25 = call i32 @DMA_BIT_MASK(i32 64)
  %26 = call i64 @pci_set_dma_mask(%struct.pci_dev* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %30 = call i32 @DMA_BIT_MASK(i32 64)
  %31 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %116

39:                                               ; preds = %28
  %40 = load i32*, i32** %5, align 8
  store i32 1, i32* %40, align 4
  br label %54

41:                                               ; preds = %23
  %42 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %43 = call i32 @DMA_BIT_MASK(i32 32)
  %44 = call i64 @pci_set_dma_mask(%struct.pci_dev* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %116

52:                                               ; preds = %41
  %53 = load i32*, i32** %5, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %39
  %55 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %56 = load i32, i32* @vmxnet3_driver_name, align 4
  %57 = call i32 @pci_request_selected_regions(%struct.pci_dev* %55, i32 3, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %116

65:                                               ; preds = %54
  %66 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %67 = call i32 @pci_set_master(%struct.pci_dev* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %69 = call i64 @pci_resource_start(%struct.pci_dev* %68, i32 0)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %71 = call i64 @pci_resource_len(%struct.pci_dev* %70, i32 0)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @ioremap(i64 %72, i64 %73)
  %75 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %65
  %82 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %113

87:                                               ; preds = %65
  %88 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %89 = call i64 @pci_resource_start(%struct.pci_dev* %88, i32 1)
  store i64 %89, i64* %7, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %91 = call i64 @pci_resource_len(%struct.pci_dev* %90, i32 1)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i8* @ioremap(i64 %92, i64 %93)
  %95 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %87
  %102 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %108

107:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %120

108:                                              ; preds = %101
  %109 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @iounmap(i8* %111)
  br label %113

113:                                              ; preds = %108, %81
  %114 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %115 = call i32 @pci_release_selected_regions(%struct.pci_dev* %114, i32 3)
  br label %116

116:                                              ; preds = %113, %60, %46, %33
  %117 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %118 = call i32 @pci_disable_device(%struct.pci_dev* %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %107, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i64, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
