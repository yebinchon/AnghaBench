; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@nile4_pci_lock = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @nile4_pcibios_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nile4_pcibios_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %22, i32* %6, align 4
  br label %75

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %31, i32* %6, align 4
  br label %75

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32* @nile4_pci_lock, i64 %34)
  %36 = load i32, i32* @PCI_ACCESS_READ, align 4
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @nile4_pcibios_config_access(i32 %36, %struct.pci_bus* %37, i32 %38, i32 %39, i32* %13)
  store i32 %40, i32* %14, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @nile4_pci_lock, i64 %41)
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %75

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 3
  %55 = ashr i32 %51, %54
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %73

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 3
  %65 = shl i32 %64, 3
  %66 = ashr i32 %62, %65
  %67 = and i32 %66, 65535
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  br label %72

69:                                               ; preds = %58
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %61
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %45, %30, %21
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nile4_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
