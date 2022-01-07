; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_core_pci_is_in_hostmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_core_pci_is_in_hostmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_core_pci_is_in_hostmode(%struct.bcma_drv_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_pci*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %3, align 8
  %7 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %10, align 8
  store %struct.bcma_bus* %11, %struct.bcma_bus** %4, align 8
  %12 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %13 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65280
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 18176
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 21248
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %19, %1
  %24 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %25 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @bcma_core_enable(%struct.TYPE_4__* %26, i32 0)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %30 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mips_busprobe32(i32 %28, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %23, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bcma_core_enable(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mips_busprobe32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
