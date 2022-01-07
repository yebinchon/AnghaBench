; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_via-agp.c_via_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_via-agp.c_via_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@VIA_APSIZE = common dso_local global i32 0, align 4
@AGP_APBASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@VIA_GARTCTRL = common dso_local global i32 0, align 4
@VIA_ATTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @via_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_8*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %5)
  store %struct.aper_size_info_8* %6, %struct.aper_size_info_8** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VIA_APSIZE, align 4
  %11 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %2, align 8
  %12 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_write_config_byte(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AGP_APBASE, align 4
  %19 = call i32 @pci_read_config_dword(i32 %17, i32 %18, i32* %1)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VIA_GARTCTRL, align 4
  %29 = call i32 @pci_write_config_dword(i32 %27, i32 %28, i32 15)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VIA_ATTBASE, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -4096
  %38 = or i32 %37, 3
  %39 = call i32 @pci_write_config_dword(i32 %32, i32 %33, i32 %38)
  ret i32 0
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
