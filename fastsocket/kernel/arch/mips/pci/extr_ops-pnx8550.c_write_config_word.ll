; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_write_config_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_write_config_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_CMD_CONFIG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i64)* @write_config_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_config_word(%struct.pci_bus* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %15 = icmp eq %struct.pci_bus* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %41

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 2
  switch i32 %25, label %29 [
    i32 2, label %26
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 16
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* @PCI_CMD_CONFIG_WRITE, align 4
  %32 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 3, %36
  %38 = xor i32 %37, -1
  %39 = call i32 @config_access(i32 %31, %struct.pci_bus* %32, i32 %33, i32 %34, i32 %38, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %30, %21, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @config_access(i32, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
