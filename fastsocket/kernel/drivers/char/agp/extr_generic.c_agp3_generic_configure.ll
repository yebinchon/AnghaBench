; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp3_generic_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp3_generic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.aper_size_info_16 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@AGP_APBASE = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@AGPAPSIZE = common dso_local global i64 0, align 8
@AGPGARTLO = common dso_local global i64 0, align 8
@AGPCTRL = common dso_local global i64 0, align 8
@AGPCTRL_APERENB = common dso_local global i32 0, align 4
@AGPCTRL_GTLBEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp3_generic_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_16*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %5)
  store %struct.aper_size_info_16* %6, %struct.aper_size_info_16** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @AGP_APBASE, align 8
  %11 = call i32 @pci_read_config_dword(i32 %9, i64 %10, i32* %1)
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AGPAPSIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %2, align 8
  %26 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_write_config_word(i32 %19, i64 %24, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AGPGARTLO, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_write_config_dword(i32 %31, i64 %36, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AGPCTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @pci_read_config_dword(i32 %43, i64 %48, i32* %1)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AGPCTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @AGPCTRL_APERENB, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @AGPCTRL_GTLBEN, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pci_write_config_dword(i32 %52, i64 %57, i32 %62)
  ret i32 0
}

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i64, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
