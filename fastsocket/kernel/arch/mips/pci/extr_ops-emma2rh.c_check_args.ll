; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-emma2rh.c_check_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-emma2rh.c_check_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32* }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32*)* @check_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_args(%struct.pci_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @db_assert(i32 %19)
  br label %23

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @PCI_SLOT(i32 %28)
  %30 = icmp sge i32 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %27
  br label %45

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 64
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @PCI_SLOT(i32 %39)
  %41 = icmp sge i32 %40, 16
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %33
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @db_assert(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
