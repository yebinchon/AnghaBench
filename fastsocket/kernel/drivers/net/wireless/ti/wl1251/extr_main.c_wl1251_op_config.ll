; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.wl1251* }
%struct.ieee80211_conf = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl1251 = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mac80211 config ch %d psm %s power %d\00", align 1
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"psm enabled\00", align 1
@STATION_POWER_SAVE_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"psm disabled\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@STATION_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @wl1251_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  store %struct.wl1251* %11, %struct.wl1251** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_frequency_to_channel(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @DEBUG_MAC80211, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %30, i64 %33)
  %35 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %36 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %35, i32 0, i32 4
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %39 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %219

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %46 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %52 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %54 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %61 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %64 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wl1251_join(%struct.wl1251* %53, i32 %56, i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %216

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %71
  %79 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @DEBUG_PSM, align 4
  %85 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %94 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %95 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %98 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wl1251_acx_wr_tbtt_and_dtim(%struct.wl1251* %93, i32 %96, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %102 = load i64, i64* @STATION_POWER_SAVE_MODE, align 8
  %103 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %101, i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %83
  br label %216

107:                                              ; preds = %83
  br label %140

108:                                              ; preds = %78, %71
  %109 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %108
  %116 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %117 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load i32, i32* @DEBUG_PSM, align 4
  %122 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %124 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %126 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %132 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %133 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %131, i64 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %216

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138, %115, %108
  br label %140

140:                                              ; preds = %139, %107
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %192

145:                                              ; preds = %140
  %146 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %147 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %192, label %150

150:                                              ; preds = %145
  %151 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %152 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %159 = load i64, i64* @STATION_IDLE, align 8
  %160 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %158, i64 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %216

164:                                              ; preds = %157
  br label %191

165:                                              ; preds = %150
  %166 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %167 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %168 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %166, i64 %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %216

172:                                              ; preds = %165
  %173 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %174 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %175 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %178 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %181 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %184 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @wl1251_join(%struct.wl1251* %173, i32 %176, i32 %179, i32 %182, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %172
  br label %216

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190, %164
  br label %192

192:                                              ; preds = %191, %145, %140
  %193 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %194 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %197 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %192
  %201 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %202 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %203 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @wl1251_acx_tx_power(%struct.wl1251* %201, i64 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %216

209:                                              ; preds = %200
  %210 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %211 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %214 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %192
  br label %216

216:                                              ; preds = %215, %208, %189, %171, %163, %136, %106, %69
  %217 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %218 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %217)
  br label %219

219:                                              ; preds = %216, %42
  %220 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %221 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %220, i32 0, i32 4
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load i32, i32* %8, align 4
  ret i32 %223
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_acx_wr_tbtt_and_dtim(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_acx_tx_power(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
