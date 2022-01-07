; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.agp_bridge_data = type { i32, i32, i32, %struct.TYPE_6__*, i64 }

@agp_bridge = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"AGP %d.%d bridge\0A\00", align 1
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@AGPSTAT_AGP_ENABLE = common dso_local global i32 0, align 4
@AGPSTAT_MODE_3_0 = common dso_local global i32 0, align 4
@AGPCTRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"bridge is in legacy mode, falling back to 2.x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_generic_enable(%struct.agp_bridge_data* %0, i32 %1) #0 {
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %8 = call i32 @get_agp_version(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, ...) @dev_info(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_AGP_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %22, i64 %27, i32* %5)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @agp_collect_device_status(%struct.TYPE_7__* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %95

36:                                               ; preds = %2
  %37 = load i32, i32* @AGPSTAT_AGP_ENABLE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %41 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 3
  br i1 %43, label %44, label %92

44:                                               ; preds = %36
  %45 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %46 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AGPSTAT_MODE_3_0, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %53 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 5
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %58 = call i32 @agp_3_5_enable(%struct.agp_bridge_data* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @agp_device_command(i32 %60, i32 1)
  br label %95

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, -7169
  store i32 %64, i32* %5, align 4
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %66 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %69 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AGPCTRL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %67, i64 %72, i32* %6)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, 512
  store i32 %75, i32* %6, align 4
  %76 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %77 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %80 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AGPCTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @pci_write_config_dword(%struct.TYPE_6__* %78, i64 %83, i32 %84)
  %86 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %87 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %36
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @agp_device_command(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %92, %59, %35
  ret void
}

declare dso_local i32 @get_agp_version(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @agp_collect_device_status(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @agp_3_5_enable(%struct.agp_bridge_data*) #1

declare dso_local i32 @agp_device_command(i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
