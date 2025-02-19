; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pci-sb1250.c_sb1250_pcibios_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pci-sb1250.c_sb1250_pcibios_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sb1250_pcibios_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1250_pcibios_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
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
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %20, i32* %6, align 4
  br label %71

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %29, i32* %6, align 4
  br label %71

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @sb1250_pci_can_access(%struct.pci_bus* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @CFGADDR(%struct.pci_bus* %37, i32 %38, i32 %39)
  %41 = call i32 @READCFG32(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %43

42:                                               ; preds = %31
  store i32 -1, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 3
  %50 = shl i32 %49, 3
  %51 = ashr i32 %47, %50
  %52 = and i32 %51, 255
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  br label %69

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 3
  %62 = ashr i32 %58, %61
  %63 = and i32 %62, 65535
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %57
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %28, %19
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @sb1250_pci_can_access(%struct.pci_bus*, i32) #1

declare dso_local i32 @READCFG32(i32) #1

declare dso_local i32 @CFGADDR(%struct.pci_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
