; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh4.c_sh4_pci_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh4.c_sh4_pci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_channel* }
%struct.pci_channel = type { i32 }

@sh4_pci_lock = common dso_local global i32 0, align 4
@SH4_PCIPAR = common dso_local global i32 0, align 4
@SH4_PCIPDR = common dso_local global i32 0, align 4
@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sh4_pci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh4_pci_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_channel*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load %struct.pci_channel*, %struct.pci_channel** %16, align 8
  store %struct.pci_channel* %17, %struct.pci_channel** %12, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @sh4_pci_lock, i64 %18)
  %20 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CONFIG_CMD(%struct.pci_bus* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @SH4_PCIPAR, align 4
  %26 = call i32 @pci_write_reg(%struct.pci_channel* %20, i32 %24, i32 %25)
  %27 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %28 = load i32, i32* @SH4_PCIPDR, align 4
  %29 = call i32 @pci_read_reg(%struct.pci_channel* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @sh4_pci_lock, i64 %30)
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %52 [
    i32 1, label %33
    i32 2, label %41
    i32 4, label %49
  ]

33:                                               ; preds = %5
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 %36, 3
  %38 = ashr i32 %34, %37
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %54

41:                                               ; preds = %5
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2
  %45 = shl i32 %44, 3
  %46 = ashr i32 %42, %45
  %47 = and i32 %46, 65535
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %54

49:                                               ; preds = %5
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %54

52:                                               ; preds = %5
  %53 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %53, i32* %6, align 4
  br label %56

54:                                               ; preds = %49, %41, %33
  %55 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i32, i32) #1

declare dso_local i32 @CONFIG_CMD(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
