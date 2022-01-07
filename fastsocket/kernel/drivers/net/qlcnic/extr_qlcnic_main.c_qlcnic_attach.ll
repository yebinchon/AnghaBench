; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Error in setting sw resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error in setting hw resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to setup interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @qlcnic_napi_add(%struct.qlcnic_adapter* %20, %struct.net_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %19
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = call i32 @qlcnic_alloc_sw_resources(%struct.qlcnic_adapter* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %66

36:                                               ; preds = %27
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = call i32 @qlcnic_alloc_hw_resources(%struct.qlcnic_adapter* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %63

45:                                               ; preds = %36
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = call i32 @qlcnic_request_irq(%struct.qlcnic_adapter* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = call i32 @qlcnic_create_sysfs_entries(%struct.qlcnic_adapter* %55)
  %57 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %70

60:                                               ; preds = %50
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = call i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter* %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = call i32 @qlcnic_free_sw_resources(%struct.qlcnic_adapter* %64)
  br label %66

66:                                               ; preds = %63, %32
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = call i32 @qlcnic_napi_del(%struct.qlcnic_adapter* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %54, %25, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @qlcnic_napi_add(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_alloc_sw_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_alloc_hw_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_request_irq(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_create_sysfs_entries(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_sw_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_napi_del(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
