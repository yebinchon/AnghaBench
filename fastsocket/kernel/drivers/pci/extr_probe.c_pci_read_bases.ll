; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_read_bases.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_read_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@pci_bar_unknown = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@IORESOURCE_CACHEABLE = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4
@pci_bar_mem32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @pci_read_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bases(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %35, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.resource*, %struct.resource** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 %20
  store %struct.resource* %21, %struct.resource** %9, align 8
  %22 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 2
  %25 = add i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @pci_bar_unknown, align 4
  %28 = load %struct.resource*, %struct.resource** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @__pci_read_base(%struct.pci_dev* %26, i32 %27, %struct.resource* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 %45
  store %struct.resource* %46, %struct.resource** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IORESOURCE_READONLY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IORESOURCE_CACHEABLE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.resource*, %struct.resource** %10, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i32, i32* @pci_bar_mem32, align 4
  %63 = load %struct.resource*, %struct.resource** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @__pci_read_base(%struct.pci_dev* %61, i32 %62, %struct.resource* %63, i32 %64)
  br label %66

66:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @__pci_read_base(%struct.pci_dev*, i32, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
