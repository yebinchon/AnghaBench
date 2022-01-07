; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@IOP13XX_ATUX_OCCDR = common dso_local global i32 0, align 4
@IOP13XX_ATUX_OCCAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @iop13xx_atux_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atux_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @iop13xx_atux_cfg_address(%struct.pci_bus* %14, i32 %15, i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %56

20:                                               ; preds = %5
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @iop13xx_atux_read(i64 %21)
  store i32 %22, i32* %13, align 4
  %23 = call i32 @iop13xx_atux_pci_status(i32 1)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %29, i32* %6, align 4
  br label %66

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = mul nsw i32 %32, 8
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 255, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 65535, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* @IOP13XX_ATUX_OCCDR, align 4
  %55 = call i32 @__raw_writel(i32 %53, i32 %54)
  br label %64

56:                                               ; preds = %5
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @IOP13XX_ATUX_OCCAR, align 4
  %60 = call i32 @__raw_writel(i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @IOP13XX_ATUX_OCCDR, align 4
  %63 = call i32 @__raw_writel(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  %65 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %28
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @iop13xx_atux_cfg_address(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @iop13xx_atux_read(i64) #1

declare dso_local i32 @iop13xx_atux_pci_status(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
