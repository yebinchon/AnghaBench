; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_pci.c_ks8695_pci_writeconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_pci.c_ks8695_pci_writeconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@pci_cfg_dbg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"write: %d,%08x,%02x,%d: %08x\0A\00", align 1
@KS8695_PCI_VA = common dso_local global i64 0, align 8
@KS8695_PBCD = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @ks8695_pci_writeconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_pci_writeconfig(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @pci_cfg_dbg, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %5
  %24 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ks8695_pci_setupconfig(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %90 [
    i32 4, label %31
    i32 2, label %38
    i32 1, label %64
  ]

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @KS8695_PCI_VA, align 8
  %35 = load i64, i64* @KS8695_PBCD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @__raw_writel(i64 %33, i64 %36)
  br label %90

38:                                               ; preds = %23
  %39 = load i64, i64* @KS8695_PCI_VA, align 8
  %40 = load i64, i64* @KS8695_PBCD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @__raw_readl(i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 2
  %45 = mul nsw i32 %44, 8
  %46 = shl i32 65535, %45
  %47 = xor i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %11, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 2
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %11, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @KS8695_PCI_VA, align 8
  %61 = load i64, i64* @KS8695_PBCD, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @__raw_writel(i64 %59, i64 %62)
  br label %90

64:                                               ; preds = %23
  %65 = load i64, i64* @KS8695_PCI_VA, align 8
  %66 = load i64, i64* @KS8695_PBCD, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @__raw_readl(i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 3
  %71 = mul nsw i32 %70, 8
  %72 = shl i32 255, %71
  %73 = xor i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %11, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 3
  %80 = mul nsw i32 %79, 8
  %81 = shl i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @KS8695_PCI_VA, align 8
  %87 = load i64, i64* @KS8695_PBCD, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @__raw_writel(i64 %85, i64 %88)
  br label %90

90:                                               ; preds = %23, %64, %38, %31
  %91 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %91
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ks8695_pci_setupconfig(i32, i32, i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i64 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
