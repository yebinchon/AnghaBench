; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_command_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_command_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CMD_BLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@CMD_BLOCK_COMMAND_OFFSET = common dso_local global i32 0, align 4
@CMD_STATUS_IDLE = common dso_local global i64 0, align 8
@CMD_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8
@CMD_STATUS_COMPLETE = common dso_local global i64 0, align 8
@Mac_Mgmt_Mib_Type = common dso_local global i32 0, align 4
@MAC_MGMT_MIB_CUR_BSSID_POS = common dso_local global i32 0, align 4
@STATION_STATE_READY = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@BSS_TYPE_AD_HOC = common dso_local global i32 0, align 4
@SITE_SURVEY_COMPLETED = common dso_local global i8* null, align 8
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@STATION_STATE_AUTHENTICATING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MGMT_JIFFIES = common dso_local global i64 0, align 8
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*)* @atmel_command_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_command_irq(%struct.atmel_private* %0) #0 {
  %2 = alloca %struct.atmel_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwreq_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %2, align 8
  %10 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %11 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %12 = load i32, i32* @CMD_BLOCK_STATUS_OFFSET, align 4
  %13 = call i32 @atmel_co(%struct.atmel_private* %11, i32 %12)
  %14 = call i64 @atmel_rmem8(%struct.atmel_private* %10, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %16 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %17 = load i32, i32* @CMD_BLOCK_COMMAND_OFFSET, align 4
  %18 = call i32 @atmel_co(%struct.atmel_private* %16, i32 %17)
  %19 = call i64 @atmel_rmem8(%struct.atmel_private* %15, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @CMD_STATUS_IDLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CMD_STATUS_IN_PROGRESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  br label %201

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  switch i64 %29, label %201 [
    i64 128, label %30
    i64 130, label %52
    i64 129, label %116
    i64 131, label %148
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @CMD_STATUS_COMPLETE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %41 = load i32, i32* @Mac_Mgmt_Mib_Type, align 4
  %42 = load i32, i32* @MAC_MGMT_MIB_CUR_BSSID_POS, align 4
  %43 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %44 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %43, i32 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = call i32 @atmel_get_mib(%struct.atmel_private* %40, i32 %41, i32 %42, i64* %46, i32 6)
  %48 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %49 = load i32, i32* @STATION_STATE_READY, align 4
  %50 = call i32 @atmel_enter_state(%struct.atmel_private* %48, i32 %49)
  br label %51

51:                                               ; preds = %34, %30
  br label %201

52:                                               ; preds = %28
  %53 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %54 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %5, align 4
  %56 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @CMD_STATUS_COMPLETE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %63 = call i32 @atmel_scan(%struct.atmel_private* %62, i32 1)
  br label %115

64:                                               ; preds = %52
  %65 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %66 = call i32 @retrieve_bss(%struct.atmel_private* %65)
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @atmel_join_bss(%struct.atmel_private* %70, i32 %71)
  br label %98

73:                                               ; preds = %64
  %74 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %75 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IW_MODE_ADHOC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %81 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %86 = load i32, i32* @BSS_TYPE_AD_HOC, align 4
  %87 = call i32 @start(%struct.atmel_private* %85, i32 %86)
  br label %97

88:                                               ; preds = %79, %73
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %94 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %96 = call i32 @atmel_scan(%struct.atmel_private* %95, i32 1)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %84
  br label %98

98:                                               ; preds = %97, %69
  %99 = load i8*, i8** @SITE_SURVEY_COMPLETED, align 8
  %100 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %101 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %100, i32 0, i32 10
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  %109 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %110 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SIOCGIWSCAN, align 4
  %113 = call i32 @wireless_send_event(i32 %111, i32 %112, %union.iwreq_data* %6, i32* null)
  br label %114

114:                                              ; preds = %104, %98
  br label %115

115:                                              ; preds = %114, %61
  br label %201

116:                                              ; preds = %28
  %117 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %118 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* @CMD_STATUS_COMPLETE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %201

123:                                              ; preds = %116
  %124 = load i8*, i8** @SITE_SURVEY_COMPLETED, align 8
  %125 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %126 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  %127 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %128 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %133 = load i32, i32* @STATION_STATE_READY, align 4
  %134 = call i32 @atmel_enter_state(%struct.atmel_private* %132, i32 %133)
  %135 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  %137 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  %139 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SIOCGIWSCAN, align 4
  %143 = call i32 @wireless_send_event(i32 %141, i32 %142, %union.iwreq_data* %6, i32* null)
  br label %147

144:                                              ; preds = %123
  %145 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %146 = call i32 @atmel_scan(%struct.atmel_private* %145, i32 1)
  br label %147

147:                                              ; preds = %144, %131
  br label %201

148:                                              ; preds = %28
  %149 = load i64, i64* %3, align 8
  %150 = load i64, i64* @CMD_STATUS_COMPLETE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %198

152:                                              ; preds = %148
  %153 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %154 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @IW_MODE_ADHOC, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %160 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %163 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %165 = load i32, i32* @STATION_STATE_READY, align 4
  %166 = call i32 @atmel_enter_state(%struct.atmel_private* %164, i32 %165)
  br label %197

167:                                              ; preds = %152
  %168 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  store i32 %168, i32* %9, align 4
  %169 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %170 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %169, i32 0, i32 5
  store i32 0, i32* %170, align 4
  %171 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %172 = load i32, i32* @STATION_STATE_AUTHENTICATING, align 4
  %173 = call i32 @atmel_enter_state(%struct.atmel_private* %171, i32 %172)
  %174 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %175 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %174, i32 0, i32 4
  %176 = load i64, i64* @jiffies, align 8
  %177 = load i64, i64* @MGMT_JIFFIES, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @mod_timer(i32* %175, i64 %178)
  %180 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %181 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  %182 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %183 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %167
  %187 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %188 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %191, %186, %167
  %194 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @send_authentication_request(%struct.atmel_private* %194, i32 %195, i32* null, i32 0)
  br label %197

197:                                              ; preds = %193, %158
  br label %201

198:                                              ; preds = %148
  %199 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %200 = call i32 @atmel_scan(%struct.atmel_private* %199, i32 1)
  br label %201

201:                                              ; preds = %27, %122, %197, %198, %28, %147, %115, %51
  ret void
}

declare dso_local i64 @atmel_rmem8(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_co(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_get_mib(%struct.atmel_private*, i32, i32, i64*, i32) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_scan(%struct.atmel_private*, i32) #1

declare dso_local i32 @retrieve_bss(%struct.atmel_private*) #1

declare dso_local i32 @atmel_join_bss(%struct.atmel_private*, i32) #1

declare dso_local i32 @start(%struct.atmel_private*, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @send_authentication_request(%struct.atmel_private*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
