; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aper_size_info_32 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"configuring for size idx: %d\0A\00", align 1
@UNI_N_CFG_GART_BASE = common dso_local global i32 0, align 4
@UNI_N_CFG_AGP_BASE = common dso_local global i32 0, align 4
@is_u3 = common dso_local global i64 0, align 8
@UNI_N_CFG_GART_DUMMY_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uninorth_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_configure() #0 {
  %1 = alloca %struct.aper_size_info_32*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %4 = load i32, i32* %3, align 8
  %5 = call %struct.aper_size_info_32* @A_SIZE_32(i32 %4)
  store %struct.aper_size_info_32* %5, %struct.aper_size_info_32** %1, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %1, align 8
  %11 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* @UNI_N_CFG_GART_BASE, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, -4096
  %22 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %1, align 8
  %23 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %16, i32 %17, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @UNI_N_CFG_AGP_BASE, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %31, i32 %32, i32 %35)
  %37 = load i64, i64* @is_u3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* @UNI_N_CFG_GART_DUMMY_PAGE, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @page_to_phys(i32 %46)
  %48 = ashr i32 %47, 12
  %49 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %42, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %39, %0
  ret i32 0
}

declare dso_local %struct.aper_size_info_32* @A_SIZE_32(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @page_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
