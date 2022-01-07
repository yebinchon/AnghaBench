; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_815_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_815_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_7__* null, align 8
@INTEL_815_ATTBASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gatt bus addr too high\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTEL_APSIZE = common dso_local global i32 0, align 4
@AGP_APBASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@INTEL_ATTBASE = common dso_local global i32 0, align 4
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@INTEL_815_APCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_815_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_815_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aper_size_info_8*, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @INTEL_815_ATTBASE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @dev_emerg(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %79

20:                                               ; preds = %0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %23)
  store %struct.aper_size_info_8* %24, %struct.aper_size_info_8** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @INTEL_APSIZE, align 4
  %29 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %5, align 8
  %30 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_write_config_byte(%struct.TYPE_6__* %27, i32 %28, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* @AGP_APBASE, align 4
  %37 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %35, i32 %36, i32* %2)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* @INTEL_ATTBASE, align 4
  %47 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %45, i32 %46, i32* %3)
  %48 = load i32, i32* @INTEL_815_ATTBASE_MASK, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* @INTEL_ATTBASE, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @pci_write_config_dword(%struct.TYPE_6__* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* @INTEL_AGPCTRL, align 4
  %66 = call i32 @pci_write_config_dword(%struct.TYPE_6__* %64, i32 %65, i32 0)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* @INTEL_815_APCONT, align 4
  %71 = call i32 @pci_read_config_byte(%struct.TYPE_6__* %69, i32 %70, i32* %4)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* @INTEL_815_APCONT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, 2
  %78 = call i32 @pci_write_config_byte(%struct.TYPE_6__* %74, i32 %75, i32 %77)
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %20, %12
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @dev_emerg(i32*, i8*) #1

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
