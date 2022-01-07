; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_io-workarounds.c_iowa_mem_find_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_io-workarounds.c_iowa_mem_find_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowa_bus = type { i32 }
%struct.TYPE_2__ = type { i32 }

@iowa_bus_count = common dso_local global i32 0, align 4
@iowa_busses = common dso_local global %struct.iowa_bus* null, align 8
@PHB_IO_BASE = common dso_local global i64 0, align 8
@PHB_IO_END = common dso_local global i64 0, align 8
@init_mm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iowa_bus* @iowa_mem_find_bus(i32 %0) #0 {
  %2 = alloca %struct.iowa_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iowa_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @PCI_GET_ADDR_TOKEN(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @iowa_bus_count, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.iowa_bus*, %struct.iowa_bus** @iowa_busses, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iowa_bus, %struct.iowa_bus* %18, i64 %21
  store %struct.iowa_bus* %22, %struct.iowa_bus** %4, align 8
  br label %55

23:                                               ; preds = %13, %1
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @PCI_FIX_ADDR(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PHB_IO_BASE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PHB_IO_END, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store %struct.iowa_bus* null, %struct.iowa_bus** %2, align 8
  br label %57

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_mm, i32 0, i32 0), align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @find_linux_pte(i32 %35, i64 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  br label %47

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pte_pfn(i32 %43)
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = shl i64 %44, %45
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call %struct.iowa_bus* @iowa_pci_find(i64 %48, i64 %49)
  store %struct.iowa_bus* %50, %struct.iowa_bus** %4, align 8
  %51 = load %struct.iowa_bus*, %struct.iowa_bus** %4, align 8
  %52 = icmp eq %struct.iowa_bus* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store %struct.iowa_bus* null, %struct.iowa_bus** %2, align 8
  br label %57

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.iowa_bus*, %struct.iowa_bus** %4, align 8
  store %struct.iowa_bus* %56, %struct.iowa_bus** %2, align 8
  br label %57

57:                                               ; preds = %55, %53, %33
  %58 = load %struct.iowa_bus*, %struct.iowa_bus** %2, align 8
  ret %struct.iowa_bus* %58
}

declare dso_local i32 @PCI_GET_ADDR_TOKEN(i32) #1

declare dso_local i64 @PCI_FIX_ADDR(i32) #1

declare dso_local i32* @find_linux_pte(i32, i64) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local %struct.iowa_bus* @iowa_pci_find(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
