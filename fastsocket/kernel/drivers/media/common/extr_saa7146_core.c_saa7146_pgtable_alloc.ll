; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_pgtable_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_pgtable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.saa7146_pgtable = type { i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_pgtable_alloc(%struct.pci_dev* %0, %struct.saa7146_pgtable* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.saa7146_pgtable*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.saa7146_pgtable* %1, %struct.saa7146_pgtable** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i32* @pci_alloc_consistent(%struct.pci_dev* %8, i32 %9, i32* %7)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %5, align 8
  %19 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %5, align 8
  %22 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %5, align 8
  %25 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
