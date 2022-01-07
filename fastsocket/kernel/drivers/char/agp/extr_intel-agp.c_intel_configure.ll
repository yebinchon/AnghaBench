; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aper_size_info_16 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@INTEL_APSIZE = common dso_local global i32 0, align 4
@AGP_APBASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@INTEL_ATTBASE = common dso_local global i32 0, align 4
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@INTEL_NBXCFG = common dso_local global i32 0, align 4
@INTEL_ERRSTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.aper_size_info_16*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %6)
  store %struct.aper_size_info_16* %7, %struct.aper_size_info_16** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INTEL_APSIZE, align 4
  %12 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %3, align 8
  %13 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_write_config_word(i32 %10, i32 %11, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AGP_APBASE, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %1)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @INTEL_ATTBASE, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_write_config_dword(i32 %28, i32 %29, i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @INTEL_AGPCTRL, align 4
  %38 = call i32 @pci_write_config_dword(i32 %36, i32 %37, i32 8832)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INTEL_NBXCFG, align 4
  %43 = call i32 @pci_read_config_word(i32 %41, i32 %42, i32* %2)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTEL_NBXCFG, align 4
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %48, -1025
  %50 = or i32 %49, 512
  %51 = call i32 @pci_write_config_word(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @INTEL_ERRSTS, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @pci_write_config_byte(i32 %54, i64 %56, i32 7)
  ret i32 0
}

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
