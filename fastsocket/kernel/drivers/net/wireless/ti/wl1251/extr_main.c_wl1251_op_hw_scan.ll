; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_4__, %struct.wl1251* }
%struct.TYPE_4__ = type { i32 }
%struct.wl1251 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.sk_buff = type { i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mac80211 hw scan\00", align 1
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"scan already in progress\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_PROBE_REQ = common dso_local global i32 0, align 4
@WL1251_SCAN_NUM_PROBES = common dso_local global i32 0, align 4
@STATION_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*)* @wl1251_op_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.wl1251*, %struct.wl1251** %13, align 8
  store %struct.wl1251* %14, %struct.wl1251** %7, align 8
  store i64 0, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32, i32* @DEBUG_MAC80211, align 4
  %16 = call i32 @wl1251_debug(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %21, %3
  %35 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %36 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @DEBUG_SCAN, align 4
  %44 = call i32 @wl1251_debug(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %180

47:                                               ; preds = %34
  %48 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %49 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %180

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %53
  %62 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %63 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %64 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %177

68:                                               ; preds = %61
  %69 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %70 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wl1251_join(%struct.wl1251* %69, i32 %72, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %177

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %53
  %88 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %89 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %97 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.sk_buff* @ieee80211_probereq_get(i32 %90, i32 %93, i32* %94, i64 %95, i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %8, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = icmp ne %struct.sk_buff* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %87
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %164

105:                                              ; preds = %87
  %106 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %107 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %113 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @skb_put(%struct.sk_buff* %111, i32 %114)
  %116 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %117 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %120 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcpy(i32 %115, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %110, %105
  %124 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %125 = load i32, i32* @CMD_PROBE_REQ, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %124, i32 %125, i32 %128, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i32 @dev_kfree_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %123
  br label %164

138:                                              ; preds = %123
  %139 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %140 = call i32 @wl1251_cmd_trigger_scan_to(%struct.wl1251* %139, i32 0)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %164

144:                                              ; preds = %138
  %145 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %146 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  %147 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %151 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %154 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @WL1251_SCAN_NUM_PROBES, align 4
  %157 = call i32 @wl1251_cmd_scan(%struct.wl1251* %147, i32* %148, i64 %149, i32 %152, i32 %155, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %162 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %161, i32 0, i32 0
  store i32 0, i32* %162, align 4
  br label %164

163:                                              ; preds = %144
  br label %177

164:                                              ; preds = %160, %143, %137, %102
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %174 = load i32, i32* @STATION_IDLE, align 4
  %175 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %173, i32 %174)
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %164
  br label %177

177:                                              ; preds = %176, %163, %85, %67
  %178 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %179 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %178)
  br label %180

180:                                              ; preds = %177, %52, %42
  %181 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %182 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %181, i32 0, i32 1
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load i32, i32* %11, align 4
  ret i32 %184
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_probereq_get(i32, i32, i32*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_cmd_trigger_scan_to(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_cmd_scan(%struct.wl1251*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
