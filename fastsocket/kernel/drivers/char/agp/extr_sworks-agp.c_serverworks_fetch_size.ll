; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_fetch_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.aper_size_info_lvl2 = type { i32, i32 }

@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@serverworks_private = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SVWRKS_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @serverworks_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverworks_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aper_size_info_lvl2*, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32 %10)
  store %struct.aper_size_info_lvl2* %11, %struct.aper_size_info_lvl2** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @serverworks_private, i32 0, i32 0), align 4
  %16 = call i32 @pci_read_config_dword(i32 %14, i32 %15, i32* %3)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @serverworks_private, i32 0, i32 0), align 4
  %21 = load i32, i32* @SVWRKS_SIZE_MASK, align 4
  %22 = call i32 @pci_write_config_dword(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @serverworks_private, i32 0, i32 0), align 4
  %27 = call i32 @pci_read_config_dword(i32 %25, i32 %26, i32* %4)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @serverworks_private, i32 0, i32 0), align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @SVWRKS_SIZE_MASK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %74, %0
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %5, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %47, i64 %49
  %51 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %5, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %55, i64 %57
  %59 = bitcast %struct.aper_size_info_lvl2* %58 to i8*
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %5, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %67, i64 %69
  %71 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %1, align 4
  br label %78

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %37

77:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
