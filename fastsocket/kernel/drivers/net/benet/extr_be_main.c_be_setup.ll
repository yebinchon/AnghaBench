; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i64, i64, %struct.TYPE_4__, i32, i64, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@BE_IF_FLAGS_UNTAGGED = common dso_local global i64 0, align 8
@BE_IF_FLAGS_BROADCAST = common dso_local global i64 0, align 8
@BE_IF_FLAGS_MULTICAST = common dso_local global i64 0, align 8
@BE_IF_FLAGS_PASS_L3L4_ERRORS = common dso_local global i64 0, align 8
@BE_FUNCTION_CAPS_RSS = common dso_local global i32 0, align 4
@BE_IF_FLAGS_RSS = common dso_local global i64 0, align 8
@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@num_vfs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"device doesn't support SRIOV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_setup(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 10
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = call i32 @be_setup_init(%struct.be_adapter* %13)
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = call i32 @lancer_chip(%struct.be_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = call i32 @be_cmd_req_native_mode(%struct.be_adapter* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = call i32 @be_get_config(%struct.be_adapter* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %169

27:                                               ; preds = %21
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = call i32 @be_msix_enable(%struct.be_adapter* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %169

33:                                               ; preds = %27
  %34 = load i64, i64* @BE_IF_FLAGS_UNTAGGED, align 8
  %35 = load i64, i64* @BE_IF_FLAGS_BROADCAST, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @BE_IF_FLAGS_MULTICAST, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @BE_IF_FLAGS_PASS_L3L4_ERRORS, align 8
  %40 = or i64 %38, %39
  store i64 %40, i64* %7, align 8
  %41 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i64, i64* @BE_IF_FLAGS_RSS, align 8
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %33
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %54 = call i64 @be_if_cap_flags(%struct.be_adapter* %53)
  %55 = and i64 %52, %54
  store i64 %55, i64* %7, align 8
  %56 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %57 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %58 = call i64 @be_if_cap_flags(%struct.be_adapter* %57)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 9
  %62 = call i32 @be_cmd_if_create(%struct.be_adapter* %56, i64 %58, i64 %59, i32* %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %169

66:                                               ; preds = %51
  %67 = call i32 (...) @rtnl_lock()
  %68 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %69 = call i32 @be_setup_queues(%struct.be_adapter* %68)
  store i32 %69, i32* %8, align 4
  %70 = call i32 (...) @rtnl_unlock()
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %169

74:                                               ; preds = %66
  %75 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %76 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %76, i32 0, i32 8
  %78 = call i32 @be_cmd_get_fn_privileges(%struct.be_adapter* %75, i32* %77, i32 0)
  %79 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %80 = call i64 @be_is_mc(%struct.be_adapter* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @MAX_PRIVILEGES, align 4
  %84 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %88 = call i32 @be_mac_setup(%struct.be_adapter* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %169

92:                                               ; preds = %86
  %93 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %94 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @be_cmd_get_fw_ver(%struct.be_adapter* %93, i32 %96, i32 %99)
  %101 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %107 = call i32 @be_vid_config(%struct.be_adapter* %106)
  br label %108

108:                                              ; preds = %105, %92
  %109 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be_set_rx_mode(i32 %111)
  %113 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %114 = call i32 @be_cmd_get_flow_control(%struct.be_adapter* %113, i64* %5, i64* %6)
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %120, %108
  %127 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %128 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @be_cmd_set_flow_control(%struct.be_adapter* %127, i64 %130, i64 %133)
  br label %135

135:                                              ; preds = %126, %120
  %136 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %137 = call i64 @be_physfn(%struct.be_adapter* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i64, i64* @num_vfs, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %144 = call i64 @be_max_vfs(%struct.be_adapter* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %148 = call i32 @be_vf_setup(%struct.be_adapter* %147)
  br label %152

149:                                              ; preds = %142
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 @dev_warn(%struct.device* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %139, %135
  %154 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %155 = call i32 @be_cmd_get_phy_info(%struct.be_adapter* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %160 = call i64 @be_pause_supported(%struct.be_adapter* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %162, %158, %153
  %167 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %168 = call i32 @be_schedule_worker(%struct.be_adapter* %167)
  store i32 0, i32* %2, align 4
  br label %173

169:                                              ; preds = %91, %73, %65, %32, %26
  %170 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %171 = call i32 @be_clear(%struct.be_adapter* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %166
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @be_setup_init(%struct.be_adapter*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_req_native_mode(%struct.be_adapter*) #1

declare dso_local i32 @be_get_config(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_enable(%struct.be_adapter*) #1

declare dso_local i64 @be_if_cap_flags(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_if_create(%struct.be_adapter*, i64, i64, i32*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @be_setup_queues(%struct.be_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @be_cmd_get_fn_privileges(%struct.be_adapter*, i32*, i32) #1

declare dso_local i64 @be_is_mc(%struct.be_adapter*) #1

declare dso_local i32 @be_mac_setup(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_vid_config(%struct.be_adapter*) #1

declare dso_local i32 @be_set_rx_mode(i32) #1

declare dso_local i32 @be_cmd_get_flow_control(%struct.be_adapter*, i64*, i64*) #1

declare dso_local i32 @be_cmd_set_flow_control(%struct.be_adapter*, i64, i64) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i64 @be_max_vfs(%struct.be_adapter*) #1

declare dso_local i32 @be_vf_setup(%struct.be_adapter*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @be_cmd_get_phy_info(%struct.be_adapter*) #1

declare dso_local i64 @be_pause_supported(%struct.be_adapter*) #1

declare dso_local i32 @be_schedule_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_clear(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
