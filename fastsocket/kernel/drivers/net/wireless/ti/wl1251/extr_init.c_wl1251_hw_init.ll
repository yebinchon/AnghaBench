; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map*, i32 }
%struct.wl1251_acx_mem_map = type { i32, i32, i32, i32 }

@RX_CFG_PROMISCUOUS = common dso_local global i32 0, align 4
@RX_CFG_TSF = common dso_local global i32 0, align 4
@RX_FILTER_OPTION_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d tx blocks at 0x%x, %d rx blocks at 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_hw_init(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wl1251_acx_mem_map*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %7 = call i32 @wl1251_hw_init_hwenc_config(%struct.wl1251* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %131

12:                                               ; preds = %1
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = call i32 @wl1251_hw_init_templates_config(%struct.wl1251* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %131

19:                                               ; preds = %12
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = call i32 @wl1251_hw_init_mem_config(%struct.wl1251* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %131

26:                                               ; preds = %19
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = call i32 @wl1251_hw_init_data_path_config(%struct.wl1251* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %125

32:                                               ; preds = %26
  %33 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %34 = load i32, i32* @RX_CFG_PROMISCUOUS, align 4
  %35 = load i32, i32* @RX_CFG_TSF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RX_FILTER_OPTION_DEF, align 4
  %38 = call i32 @wl1251_hw_init_rx_config(%struct.wl1251* %33, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %120

42:                                               ; preds = %32
  %43 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %44 = call i32 @wl1251_hw_init_tx_queue_config(%struct.wl1251* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42
  %49 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %50 = call i32 @wl1251_hw_init_phy_config(%struct.wl1251* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %120

54:                                               ; preds = %48
  %55 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %56 = call i32 @wl1251_acx_conn_monit_params(%struct.wl1251* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %120

60:                                               ; preds = %54
  %61 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %62 = call i32 @wl1251_hw_init_beacon_filter(%struct.wl1251* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %120

66:                                               ; preds = %60
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = call i32 @wl1251_hw_init_pta(%struct.wl1251* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %120

72:                                               ; preds = %66
  %73 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %74 = call i32 @wl1251_hw_init_energy_detection(%struct.wl1251* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %120

78:                                               ; preds = %72
  %79 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %80 = call i32 @wl1251_hw_init_beacon_broadcast(%struct.wl1251* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %120

84:                                               ; preds = %78
  %85 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %86 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wl1251_cmd_data_path(%struct.wl1251* %85, i32 %88, i32 1)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %120

93:                                               ; preds = %84
  %94 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %95 = call i32 @wl1251_hw_init_power_auth(%struct.wl1251* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %120

99:                                               ; preds = %93
  %100 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %101 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %100, i32 0, i32 0
  %102 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %101, align 8
  store %struct.wl1251_acx_mem_map* %102, %struct.wl1251_acx_mem_map** %4, align 8
  %103 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %4, align 8
  %104 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %107 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %106, i32 0, i32 1
  %108 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %107, align 8
  %109 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %4, align 8
  %112 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %115 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %114, i32 0, i32 1
  %116 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %115, align 8
  %117 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @wl1251_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %110, i32 %113, i32 %118)
  store i32 0, i32* %2, align 4
  br label %131

120:                                              ; preds = %98, %92, %83, %77, %71, %65, %59, %53, %47, %41
  %121 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %122 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %121, i32 0, i32 1
  %123 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %122, align 8
  %124 = call i32 @kfree(%struct.wl1251_acx_mem_map* %123)
  br label %125

125:                                              ; preds = %120, %31
  %126 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %127 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %126, i32 0, i32 0
  %128 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %127, align 8
  %129 = call i32 @kfree(%struct.wl1251_acx_mem_map* %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %99, %24, %17, %10
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @wl1251_hw_init_hwenc_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_templates_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_mem_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_data_path_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_rx_config(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_hw_init_tx_queue_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_phy_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_conn_monit_params(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_beacon_filter(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_pta(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_energy_detection(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_beacon_broadcast(%struct.wl1251*) #1

declare dso_local i32 @wl1251_cmd_data_path(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_hw_init_power_auth(%struct.wl1251*) #1

declare dso_local i32 @wl1251_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_mem_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
