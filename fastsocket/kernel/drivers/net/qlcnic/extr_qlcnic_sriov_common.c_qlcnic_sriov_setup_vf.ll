; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_setup_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_setup_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@qlcnic_use_msi_x = common dso_local global i32 0, align 4
@qlcnic_use_msi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"83xx adapter do not support MSI interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to setup interrupt\0A\00", align 1
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: XGbE port initialized\0A\00", align 1
@qlcnic_sriov_vf_poll_dev_state = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_sriov_setup_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_setup_vf(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 3
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load i32, i32* @qlcnic_use_msi_x, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @qlcnic_use_msi, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15, %12, %2
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %23 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %111

32:                                               ; preds = %21
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = call i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %111

38:                                               ; preds = %32
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = call i32 @qlcnic_sriov_init(%struct.qlcnic_adapter* %39, i32 1)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %108

44:                                               ; preds = %38
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %46 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %105

50:                                               ; preds = %44
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %52 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_INIT, align 4
  %53 = call i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %102

57:                                               ; preds = %50
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %59 = call i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %98

63:                                               ; preds = %57
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter* %64, %struct.TYPE_7__* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %98

73:                                               ; preds = %63
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = call i32 @pci_set_drvdata(%struct.TYPE_8__* %76, %struct.qlcnic_adapter* %77)
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %90 = load i32, i32* @qlcnic_sriov_vf_poll_dev_state, align 4
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %89, i32 %90, i32 %96)
  store i32 0, i32* %3, align 4
  br label %115

98:                                               ; preds = %72, %62
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %100 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_TERM, align 4
  %101 = call i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %56
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %104 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %103, i32 0)
  br label %105

105:                                              ; preds = %102, %49
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %107 = call i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter* %106)
  br label %108

108:                                              ; preds = %105, %43
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %110 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %109)
  br label %111

111:                                              ; preds = %108, %37, %26
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %113 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %73
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_init(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_8__*, %struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
