; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_host_pci.c_bcma_host_pci_awrite32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_host_pci.c_bcma_host_pci_awrite32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.bcma_device* }

@BCMA_CORE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*, i64, i32)* @bcma_host_pci_awrite32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_host_pci_awrite32(%struct.bcma_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %8 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %12 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %13 = icmp ne %struct.bcma_device* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %16 = call i32 @bcma_host_pci_switch_core(%struct.bcma_device* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %20 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @BCMA_CORE_SIZE, align 4
  %25 = mul nsw i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %18, i64 %29)
  ret void
}

declare dso_local i32 @bcma_host_pci_switch_core(%struct.bcma_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
