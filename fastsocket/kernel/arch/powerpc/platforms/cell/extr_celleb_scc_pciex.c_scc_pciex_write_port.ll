; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c_scc_pciex_write_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c_scc_pciex_write_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }

@PEXDCMND_IO_WRITE = common dso_local global i32 0, align 4
@PEXDCMND_BYTE_EN_SHIFT = common dso_local global i32 0, align 4
@PEXDADRS = common dso_local global i32 0, align 4
@PEXDCMND = common dso_local global i32 0, align 4
@PEXDWDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"PCIEX:PIO WRITE:port=0x%lx, addr=%lx, size=%d, val=%x, be=%x, cmd=%x, data=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, i64, i32, i32)* @scc_pciex_write_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_pciex_write_port(%struct.pci_controller* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, 3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = icmp ugt i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @get_bus_address(%struct.pci_controller* %22, i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = and i64 %25, 3
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @PEXDCMND_IO_WRITE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PEXDCMND_BYTE_EN_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 4, %39
  %41 = mul nsw i32 %40, 8
  %42 = lshr i32 -1, %41
  %43 = and i32 %38, %42
  %44 = load i32, i32* %11, align 4
  %45 = mul i32 %44, 8
  %46 = shl i32 %43, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %48 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PEXDADRS, align 4
  %51 = load i64, i64* %12, align 8
  %52 = and i64 %51, -4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @PEX_OUT(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %56 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PEXDCMND, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @PEX_OUT(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %62 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PEXDWDATA, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @PEX_OUT(i32 %63, i32 %64, i32 %65)
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_bus_address(%struct.pci_controller*, i64) #1

declare dso_local i32 @PEX_OUT(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
