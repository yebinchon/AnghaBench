; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_pcibios_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @msp_pcibios_read_config_byte(%struct.pci_bus* %15, i32 %16, i32 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %6, align 4
  br label %53

22:                                               ; preds = %14
  br label %51

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @msp_pcibios_read_config_word(%struct.pci_bus* %27, i32 %28, i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %53

34:                                               ; preds = %26
  br label %50

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @msp_pcibios_read_config_dword(%struct.pci_bus* %39, i32 %40, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %53

46:                                               ; preds = %38
  br label %49

47:                                               ; preds = %35
  %48 = load i32*, i32** %11, align 8
  store i32 -1, i32* %48, align 4
  store i32 -1, i32* %6, align 4
  br label %53

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %47, %45, %33, %21
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @msp_pcibios_read_config_byte(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i64 @msp_pcibios_read_config_word(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i64 @msp_pcibios_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
