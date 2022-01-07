; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qib_map_page(%struct.pci_dev* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @pci_map_page(%struct.pci_dev* %12, %struct.page* %13, i64 %14, i64 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @pci_unmap_page(%struct.pci_dev* %21, i64 %22, i64 %23, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @pci_map_page(%struct.pci_dev* %26, %struct.page* %27, i64 %28, i64 %29, i32 %30)
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %20, %5
  %33 = load i64, i64* %11, align 8
  ret i64 %33
}

declare dso_local i64 @pci_map_page(%struct.pci_dev*, %struct.page*, i64, i64, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
