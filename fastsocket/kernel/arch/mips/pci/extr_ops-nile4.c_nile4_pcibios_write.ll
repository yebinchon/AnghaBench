; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@nile4_pci_lock = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @nile4_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nile4_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
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
  br label %94

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
  br label %94

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
  br label %94

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 3
  %55 = shl i32 255, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %51, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 3
  %62 = shl i32 %58, %61
  %63 = or i32 %57, %62
  store i32 %63, i32* %13, align 4
  br label %84

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 3
  %71 = shl i32 %70, 3
  %72 = shl i32 65535, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %68, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 3
  %78 = shl i32 %77, 3
  %79 = shl i32 %75, %78
  %80 = or i32 %74, %79
  store i32 %80, i32* %13, align 4
  br label %83

81:                                               ; preds = %64
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %67
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %86 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @nile4_pcibios_config_access(i32 %85, %struct.pci_bus* %86, i32 %87, i32 %88, i32* %13)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 -1, i32* %6, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %91, %45, %30, %21
  %95 = load i32, i32* %6, align 4
  ret i32 %95
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
