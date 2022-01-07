; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c_scc_pciex_read_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c_scc_pciex_read_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }

@PEXDCMND_IO_READ = common dso_local global i32 0, align 4
@PEXDCMND_BYTE_EN_SHIFT = common dso_local global i32 0, align 4
@PEXDADRS = common dso_local global i32 0, align 4
@PEXDCMND = common dso_local global i32 0, align 4
@PEXDRDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"PCIEX:PIO READ:port=0x%lx, addr=0x%lx, size=%d, be=%x, cmd=%x, data=%x, ret=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_controller*, i64, i32)* @scc_pciex_read_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_pciex_read_port(%struct.pci_controller* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, 3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = icmp ugt i64 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @get_bus_address(%struct.pci_controller* %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = and i64 %24, 3
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @PEXDCMND_IO_READ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PEXDCMND_BYTE_EN_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PEXDADRS, align 4
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %41, -4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @PEX_OUT(i32 %39, i32 %40, i32 %43)
  %45 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PEXDCMND, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @PEX_OUT(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %52 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PEXDRDATA, align 4
  %55 = call i32 @PEX_IN(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul i32 %57, 8
  %59 = lshr i32 %56, %58
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 4, %60
  %62 = mul nsw i32 %61, 8
  %63 = lshr i32 -1, %62
  %64 = and i32 %59, %63
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  ret i32 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_bus_address(%struct.pci_controller*, i64) #1

declare dso_local i32 @PEX_OUT(i32, i32, i32) #1

declare dso_local i32 @PEX_IN(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
