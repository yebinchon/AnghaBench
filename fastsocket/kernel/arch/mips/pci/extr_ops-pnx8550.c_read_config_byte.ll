; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_read_config_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pnx8550.c_read_config_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_CMD_CONFIG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i8*)* @read_config_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_byte(%struct.pci_bus* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = icmp eq %struct.pci_bus* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

15:                                               ; preds = %4
  %16 = load i32, i32* @PCI_CMD_CONFIG_READ, align 4
  %17 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = call i32 @config_access(i32 %16, %struct.pci_bus* %17, i32 %18, i32 %19, i32 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 3
  switch i32 %26, label %50 [
    i32 0, label %27
    i32 1, label %32
    i32 2, label %38
    i32 3, label %44
  ]

27:                                               ; preds = %15
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %9, align 8
  store i8 %30, i8* %31, align 1
  br label %50

32:                                               ; preds = %15
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 65280
  %35 = lshr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %9, align 8
  store i8 %36, i8* %37, align 1
  br label %50

38:                                               ; preds = %15
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 16711680
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %9, align 8
  store i8 %42, i8* %43, align 1
  br label %50

44:                                               ; preds = %15
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, -16777216
  %47 = lshr i32 %46, 24
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %9, align 8
  store i8 %48, i8* %49, align 1
  br label %50

50:                                               ; preds = %15, %44, %38, %32, %27
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @config_access(i32, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
