; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c___pci_find_next_cap_ttl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c___pci_find_next_cap_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_CAP_LIST_ID = common dso_local global i32 0, align 4
@PCI_CAP_LIST_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @__pci_find_next_cap_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_find_next_cap_ttl(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  br label %13

13:                                               ; preds = %44, %5
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %19, i32 %20, i32 %21, i32* %9)
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %50

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PCI_CAP_LIST_ID, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %29, i32 %30, i32 %33, i32* %12)
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %50

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %6, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i64, i64* @PCI_CAP_LIST_NEXT, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  br label %13

50:                                               ; preds = %37, %25, %13
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
