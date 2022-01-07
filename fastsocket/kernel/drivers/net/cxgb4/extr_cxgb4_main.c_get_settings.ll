; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i32, i32, i8*, i8*, i64, i32, i8* }
%struct.port_info = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FW_PORT_TYPE_BT_SGMII = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XFI = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XAUI = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i8* null, align 8
@FW_PORT_TYPE_FIBER_XFI = common dso_local global i64 0, align 8
@FW_PORT_TYPE_FIBER_XAUI = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i8* null, align 8
@FW_PORT_TYPE_SFP = common dso_local global i64 0, align 8
@FW_PORT_MOD_TYPE_TWINAX_PASSIVE = common dso_local global i64 0, align 8
@FW_PORT_MOD_TYPE_TWINAX_ACTIVE = common dso_local global i64 0, align 8
@PORT_DA = common dso_local global i8* null, align 8
@PORT_OTHER = common dso_local global i8* null, align 8
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C22 = common dso_local global i64 0, align 8
@MDIO_SUPPORTS_C45 = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.port_info* @netdev_priv(%struct.net_device* %6)
  store %struct.port_info* %7, %struct.port_info** %5, align 8
  %8 = load %struct.port_info*, %struct.port_info** %5, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FW_PORT_TYPE_BT_SGMII, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FW_PORT_TYPE_BT_XFI, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.port_info*, %struct.port_info** %5, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FW_PORT_TYPE_BT_XAUI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %13, %2
  %26 = load i8*, i8** @PORT_TP, align 8
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  br label %78

29:                                               ; preds = %19
  %30 = load %struct.port_info*, %struct.port_info** %5, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FW_PORT_TYPE_FIBER_XFI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.port_info*, %struct.port_info** %5, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FW_PORT_TYPE_FIBER_XAUI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** @PORT_FIBRE, align 8
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  br label %77

45:                                               ; preds = %35
  %46 = load %struct.port_info*, %struct.port_info** %5, align 8
  %47 = getelementptr inbounds %struct.port_info, %struct.port_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FW_PORT_TYPE_SFP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.port_info*, %struct.port_info** %5, align 8
  %53 = getelementptr inbounds %struct.port_info, %struct.port_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FW_PORT_MOD_TYPE_TWINAX_PASSIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.port_info*, %struct.port_info** %5, align 8
  %59 = getelementptr inbounds %struct.port_info, %struct.port_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FW_PORT_MOD_TYPE_TWINAX_ACTIVE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %51
  %64 = load i8*, i8** @PORT_DA, align 8
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load i8*, i8** @PORT_FIBRE, align 8
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %76

72:                                               ; preds = %45
  %73 = load i8*, i8** @PORT_OTHER, align 8
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %71
  br label %77

77:                                               ; preds = %76, %41
  br label %78

78:                                               ; preds = %77, %25
  %79 = load %struct.port_info*, %struct.port_info** %5, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.port_info*, %struct.port_info** %5, align 8
  %85 = getelementptr inbounds %struct.port_info, %struct.port_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @XCVR_EXTERNAL, align 4
  %90 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load %struct.port_info*, %struct.port_info** %5, align 8
  %93 = getelementptr inbounds %struct.port_info, %struct.port_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FW_PORT_TYPE_BT_SGMII, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i64, i64* @MDIO_SUPPORTS_C22, align 8
  br label %101

99:                                               ; preds = %83
  %100 = load i64, i64* @MDIO_SUPPORTS_C45, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %103, i32 0, i32 7
  store i64 %102, i64* %104, align 8
  br label %113

105:                                              ; preds = %78
  %106 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @XCVR_INTERNAL, align 4
  %109 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %105, %101
  %114 = load %struct.port_info*, %struct.port_info** %5, align 8
  %115 = getelementptr inbounds %struct.port_info, %struct.port_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.port_info*, %struct.port_info** %5, align 8
  %118 = getelementptr inbounds %struct.port_info, %struct.port_info* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @from_fw_linkcaps(i64 %116, i32 %120)
  %122 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.port_info*, %struct.port_info** %5, align 8
  %125 = getelementptr inbounds %struct.port_info, %struct.port_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.port_info*, %struct.port_info** %5, align 8
  %128 = getelementptr inbounds %struct.port_info, %struct.port_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @from_fw_linkcaps(i64 %126, i32 %130)
  %132 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %133 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = call i64 @netif_carrier_ok(%struct.net_device* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %113
  %139 = load %struct.port_info*, %struct.port_info** %5, align 8
  %140 = getelementptr inbounds %struct.port_info, %struct.port_info* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  br label %144

143:                                              ; preds = %113
  br label %144

144:                                              ; preds = %143, %138
  %145 = phi i32 [ %142, %138 ], [ 0, %143 ]
  %146 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %134, i32 %145)
  %147 = load i32, i32* @DUPLEX_FULL, align 4
  %148 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %149 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.port_info*, %struct.port_info** %5, align 8
  %151 = getelementptr inbounds %struct.port_info, %struct.port_info* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %155 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %157 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %159 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @from_fw_linkcaps(i64, i32) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
