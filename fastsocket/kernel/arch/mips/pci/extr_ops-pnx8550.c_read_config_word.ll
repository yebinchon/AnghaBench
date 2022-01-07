; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_read_config_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_read_config_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_CMD_CONFIG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i16*)* @read_config_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_word(%struct.pci_bus* %0, i32 %1, i32 %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = icmp eq %struct.pci_bus* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %20, i32* %5, align 4
  br label %46

21:                                               ; preds = %15
  %22 = load i32, i32* @PCI_CMD_CONFIG_READ, align 4
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  %28 = shl i32 3, %27
  %29 = xor i32 %28, -1
  %30 = call i32 @config_access(i32 %22, %struct.pci_bus* %23, i32 %24, i32 %25, i32 %29, i32* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 2
  switch i32 %32, label %44 [
    i32 0, label %33
    i32 2, label %38
  ]

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 65535
  %36 = trunc i32 %35 to i16
  %37 = load i16*, i16** %9, align 8
  store i16 %36, i16* %37, align 2
  br label %44

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, -65536
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i16
  %43 = load i16*, i16** %9, align 8
  store i16 %42, i16* %43, align 2
  br label %44

44:                                               ; preds = %21, %38, %33
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %19, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @config_access(i32, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
