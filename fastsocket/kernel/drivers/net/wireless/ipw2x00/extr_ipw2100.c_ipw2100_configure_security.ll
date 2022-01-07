; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_configure_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_configure_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64, i64*, i32* }
%struct.TYPE_4__ = type { i32 }

@STATUS_RUNNING = common dso_local global i32 0, align 4
@IPW_AUTH_OPEN = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i64 0, align 8
@IPW_AUTH_SHARED = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i64 0, align 8
@IPW_AUTH_LEAP_CISCO_ID = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@SEC_UNICAST_GROUP = common dso_local global i32 0, align 4
@WEP_KEY_LEN = common dso_local global i32 0, align 4
@IPW_PRIVACY_CAPABLE = common dso_local global i32 0, align 4
@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_configure_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_configure_security(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @STATUS_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %241

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %23 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %241

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %39 = load i32, i32* @IPW_AUTH_OPEN, align 4
  %40 = load i32, i32* @SEC_LEVEL_0, align 4
  %41 = call i32 @ipw2100_set_security_information(%struct.ipw2100_priv* %38, i32 %39, i32 %40, i32 0, i32 1)
  store i32 %41, i32* %7, align 4
  br label %118

42:                                               ; preds = %29
  %43 = load i32, i32* @IPW_AUTH_OPEN, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SEC_AUTH_MODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %42
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @IPW_AUTH_SHARED, align 4
  store i32 %63, i32* %8, align 4
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WLAN_AUTH_LEAP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @IPW_AUTH_LEAP_CISCO_ID, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %64
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i32, i32* @SEC_LEVEL_0, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SEC_LEVEL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %90 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %77
  store i32 0, i32* %10, align 4
  %96 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SEC_UNICAST_GROUP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %107 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %105, %95
  %113 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ipw2100_set_security_information(%struct.ipw2100_priv* %113, i32 %114, i32 %115, i32 %116, i32 1)
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %37
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %233

122:                                              ; preds = %118
  %123 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %124 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %208

130:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %196, %130
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %199

134:                                              ; preds = %131
  %135 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %136 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %134
  %146 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %147 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @WEP_KEY_LEN, align 4
  %157 = call i32 @memset(i32 %155, i32 0, i32 %156)
  %158 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %159 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 0, i64* %166, align 8
  br label %195

167:                                              ; preds = %134
  %168 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %171 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %181 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 5
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @ipw2100_set_key(%struct.ipw2100_priv* %168, i32 %169, i32 %179, i64 %189, i32 1)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %167
  br label %233

194:                                              ; preds = %167
  br label %195

195:                                              ; preds = %194, %145
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %131

199:                                              ; preds = %131
  %200 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %201 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %202 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ipw2100_set_key_index(%struct.ipw2100_priv* %200, i32 %206, i32 1)
  br label %208

208:                                              ; preds = %199, %122
  %209 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %210 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %211 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %208
  %218 = load i32, i32* @IPW_PRIVACY_CAPABLE, align 4
  br label %220

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = call i32 @ipw2100_set_wep_flags(%struct.ipw2100_priv* %209, i32 %221, i32 1)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %233

226:                                              ; preds = %220
  %227 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %230 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %226, %225, %193, %121
  %234 = load i32, i32* %5, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %238 = call i32 @ipw2100_enable_adapter(%struct.ipw2100_priv* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %239, %26, %17
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_set_security_information(%struct.ipw2100_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ipw2100_set_key(%struct.ipw2100_priv*, i32, i32, i64, i32) #1

declare dso_local i32 @ipw2100_set_key_index(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @ipw2100_set_wep_flags(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
