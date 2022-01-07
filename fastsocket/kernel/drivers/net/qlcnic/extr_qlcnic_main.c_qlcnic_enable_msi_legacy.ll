; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msi_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msi_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_legacy_intr_set = type { i32, i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i8*, i8*, i8*, i8*, %struct.qlcnic_hardware_context*, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i32 }
%struct.pci_dev = type { i32, i32 }

@qlcnic_use_msi = common dso_local global i64 0, align 8
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@msi_tgt_status = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"using msi interrupts\0A\00", align 1
@qlcnic_use_msi_x = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@legacy_intr = common dso_local global %struct.qlcnic_legacy_intr_set* null, align 8
@ISR_INT_VECTOR = common dso_local global i32 0, align 4
@ISR_INT_STATE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"using legacy interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_enable_msi_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_enable_msi_legacy(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_legacy_intr_set*, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 5
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %8, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 7
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %9, align 8
  %16 = load i64, i64* @qlcnic_use_msi, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %20 = call i32 @pci_enable_msi(%struct.pci_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32*, i32** @msi_tgt_status, align 8
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 5
  %31 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %30, align 8
  %32 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 5
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context* %38, i32 %39)
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 1
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %117

55:                                               ; preds = %18, %1
  %56 = load i64, i64* @qlcnic_use_msi, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @qlcnic_use_msi_x, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %117

64:                                               ; preds = %58
  %65 = load %struct.qlcnic_legacy_intr_set*, %struct.qlcnic_legacy_intr_set** @legacy_intr, align 8
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 5
  %68 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %67, align 8
  %69 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.qlcnic_legacy_intr_set, %struct.qlcnic_legacy_intr_set* %65, i64 %70
  store %struct.qlcnic_legacy_intr_set* %71, %struct.qlcnic_legacy_intr_set** %7, align 8
  %72 = load %struct.qlcnic_legacy_intr_set*, %struct.qlcnic_legacy_intr_set** %7, align 8
  %73 = getelementptr inbounds %struct.qlcnic_legacy_intr_set, %struct.qlcnic_legacy_intr_set* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 5
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %76, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load %struct.qlcnic_legacy_intr_set*, %struct.qlcnic_legacy_intr_set** %7, align 8
  %80 = getelementptr inbounds %struct.qlcnic_legacy_intr_set, %struct.qlcnic_legacy_intr_set* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context* %82, i32 %83)
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.qlcnic_legacy_intr_set*, %struct.qlcnic_legacy_intr_set** %7, align 8
  %88 = getelementptr inbounds %struct.qlcnic_legacy_intr_set, %struct.qlcnic_legacy_intr_set* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context* %90, i32 %91)
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %96 = load i32, i32* @ISR_INT_VECTOR, align 4
  %97 = call i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context* %95, i32 %96)
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %101 = load i32, i32* @ISR_INT_STATE_REG, align 4
  %102 = call i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context* %100, i32 %101)
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 1
  %107 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %64, %61, %22
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i8* @qlcnic_get_ioaddr(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
