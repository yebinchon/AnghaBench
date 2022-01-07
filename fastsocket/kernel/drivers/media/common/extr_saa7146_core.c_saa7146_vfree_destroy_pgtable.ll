; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_vfree_destroy_pgtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_vfree_destroy_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.saa7146_pgtable = type { i32*, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_vfree_destroy_pgtable(%struct.pci_dev* %0, i8* %1, %struct.saa7146_pgtable* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.saa7146_pgtable*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.saa7146_pgtable* %2, %struct.saa7146_pgtable** %6, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %9 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %12 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %15 = call i32 @pci_unmap_sg(%struct.pci_dev* %7, i32* %10, i32 %13, i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %18 = call i32 @saa7146_pgtable_free(%struct.pci_dev* %16, %struct.saa7146_pgtable* %17)
  %19 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %20 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %24 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @vfree(i8* %25)
  ret void
}

declare dso_local i32 @pci_unmap_sg(%struct.pci_dev*, i32*, i32, i32) #1

declare dso_local i32 @saa7146_pgtable_free(%struct.pci_dev*, %struct.saa7146_pgtable*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
