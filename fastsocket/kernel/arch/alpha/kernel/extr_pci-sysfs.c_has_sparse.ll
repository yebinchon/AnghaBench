; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_has_sparse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_has_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i64, i64 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_controller*, i32)* @has_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_sparse(%struct.pci_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @pci_mmap_mem, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %11 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i64 [ %12, %9 ], [ %16, %13 ]
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
