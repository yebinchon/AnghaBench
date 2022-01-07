; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common-pci.c_dma_needs_bounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common-pci.c_dma_needs_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }

@pci_bus_type = common dso_local global i32 0, align 4
@SZ_64M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_needs_bounce(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @pci_bus_type
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %12, %13
  %15 = load i64, i64* @SZ_64M, align 8
  %16 = icmp uge i64 %14, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
