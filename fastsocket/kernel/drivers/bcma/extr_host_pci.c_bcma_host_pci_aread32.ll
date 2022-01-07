; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_host_pci.c_bcma_host_pci_aread32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_host_pci.c_bcma_host_pci_aread32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.bcma_device* }

@BCMA_CORE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*, i64)* @bcma_host_pci_aread32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_host_pci_aread32(%struct.bcma_device* %0, i64 %1) #0 {
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i64, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %6 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %10 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %11 = icmp ne %struct.bcma_device* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = call i32 @bcma_host_pci_switch_core(%struct.bcma_device* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %17 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @BCMA_CORE_SIZE, align 4
  %22 = mul nsw i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32(i64 %26)
  ret i32 %27
}

declare dso_local i32 @bcma_host_pci_switch_core(%struct.bcma_device*) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
