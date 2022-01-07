; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_agp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@PCI_AGP_COMMAND_AGP = common dso_local global i32 0, align 4
@uninorth_rev = common dso_local global i32 0, align 4
@AGPSTAT2_4X = common dso_local global i32 0, align 4
@AGPSTAT_RQ_DEPTH_SHIFT = common dso_local global i32 0, align 4
@AGPSTAT_RQ_DEPTH = common dso_local global i32 0, align 4
@PCI_AGP_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"can't write UniNorth AGP command register\0A\00", align 1
@AGPSTAT_MODE_3_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_bridge_data*, i32)* @uninorth_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninorth_agp_enable(%struct.agp_bridge_data* %0, i32 %1) #0 {
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %10 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %13 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_AGP_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %11, i64 %16, i32* %7)
  %18 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @agp_collect_device_status(%struct.agp_bridge_data* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PCI_AGP_COMMAND_AGP, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @uninorth_rev, align 4
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @AGPSTAT2_4X, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i32, i32* @uninorth_rev, align 4
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32, i32* @uninorth_rev, align 4
  %37 = icmp sle i32 %36, 51
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AGPSTAT_RQ_DEPTH_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = icmp sgt i32 %41, 7
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AGPSTAT_RQ_DEPTH, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* @AGPSTAT_RQ_DEPTH_SHIFT, align 4
  %49 = shl i32 7, %48
  %50 = or i32 %47, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %51, %35, %32
  %53 = call i32 @uninorth_tlbflush(i32* null)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %83, %52
  %55 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %56 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %59 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI_AGP_COMMAND, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %57, i64 %62, i32 %63)
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %66 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %69 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI_AGP_COMMAND, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %67, i64 %72, i32* %6)
  br label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @PCI_AGP_COMMAND_AGP, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = icmp slt i32 %81, 1000
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i1 [ false, %74 ], [ %82, %79 ]
  br i1 %84, label %54, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PCI_AGP_COMMAND_AGP, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %92 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* @uninorth_rev, align 4
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @AGPSTAT_MODE_3_0, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @agp_device_command(i32 %100, i32 %105)
  br label %110

107:                                              ; preds = %96
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @agp_device_command(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %107, %99
  %111 = call i32 @uninorth_tlbflush(i32* null)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_3__*, i64, i32*) #1

declare dso_local i32 @agp_collect_device_status(%struct.agp_bridge_data*, i32, i32) #1

declare dso_local i32 @uninorth_tlbflush(i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @agp_device_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
