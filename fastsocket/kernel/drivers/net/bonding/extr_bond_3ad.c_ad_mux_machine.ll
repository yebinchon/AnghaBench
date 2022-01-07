; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_mux_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_mux_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AD_PORT_BEGIN = common dso_local global i32 0, align 4
@AD_PORT_SELECTED = common dso_local global i32 0, align 4
@AD_PORT_STANDBY = common dso_local global i32 0, align 4
@AD_PORT_READY_N = common dso_local global i32 0, align 4
@AD_PORT_READY = common dso_local global i32 0, align 4
@AD_STATE_SYNCHRONIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Mux Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", align 1
@AD_STATE_COLLECTING = common dso_local global i32 0, align 4
@AD_STATE_DISTRIBUTING = common dso_local global i32 0, align 4
@AD_WAIT_WHILE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @ad_mux_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_mux_machine(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AD_PORT_BEGIN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.port*, %struct.port** %2, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 0
  store i64 129, i64* %15, align 8
  br label %206

16:                                               ; preds = %1
  %17 = load %struct.port*, %struct.port** %2, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  switch i64 %19, label %204 [
    i64 129, label %20
    i64 128, label %38
    i64 131, label %103
    i64 130, label %158
  ]

20:                                               ; preds = %16
  %21 = load %struct.port*, %struct.port** %2, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AD_PORT_SELECTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AD_PORT_STANDBY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %20
  %35 = load %struct.port*, %struct.port** %2, align 8
  %36 = getelementptr inbounds %struct.port, %struct.port* %35, i32 0, i32 0
  store i64 128, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  br label %205

38:                                               ; preds = %16
  %39 = load %struct.port*, %struct.port** %2, align 8
  %40 = getelementptr inbounds %struct.port, %struct.port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AD_PORT_SELECTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @AD_PORT_READY_N, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.port*, %struct.port** %2, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.port*, %struct.port** %2, align 8
  %53 = getelementptr inbounds %struct.port, %struct.port* %52, i32 0, i32 6
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 6
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @__agg_ports_are_ready(%struct.TYPE_5__* %57)
  %59 = call i32 @__set_agg_ports_ready(%struct.TYPE_5__* %54, i32 %58)
  %60 = load %struct.port*, %struct.port** %2, align 8
  %61 = getelementptr inbounds %struct.port, %struct.port* %60, i32 0, i32 0
  store i64 129, i64* %61, align 8
  br label %205

62:                                               ; preds = %38
  %63 = load %struct.port*, %struct.port** %2, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.port*, %struct.port** %2, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @AD_PORT_READY_N, align 4
  %75 = load %struct.port*, %struct.port** %2, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67, %62
  %80 = load %struct.port*, %struct.port** %2, align 8
  %81 = getelementptr inbounds %struct.port, %struct.port* %80, i32 0, i32 6
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load %struct.port*, %struct.port** %2, align 8
  %84 = getelementptr inbounds %struct.port, %struct.port* %83, i32 0, i32 6
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @__agg_ports_are_ready(%struct.TYPE_5__* %85)
  %87 = call i32 @__set_agg_ports_ready(%struct.TYPE_5__* %82, i32 %86)
  %88 = load %struct.port*, %struct.port** %2, align 8
  %89 = getelementptr inbounds %struct.port, %struct.port* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AD_PORT_READY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load %struct.port*, %struct.port** %2, align 8
  %96 = getelementptr inbounds %struct.port, %struct.port* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.port*, %struct.port** %2, align 8
  %101 = getelementptr inbounds %struct.port, %struct.port* %100, i32 0, i32 0
  store i64 131, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %94, %79
  br label %205

103:                                              ; preds = %16
  %104 = load %struct.port*, %struct.port** %2, align 8
  %105 = getelementptr inbounds %struct.port, %struct.port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AD_PORT_SELECTED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load %struct.port*, %struct.port** %2, align 8
  %112 = getelementptr inbounds %struct.port, %struct.port* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load %struct.port*, %struct.port** %2, align 8
  %120 = call i32 @__check_agg_selection_timer(%struct.port* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load %struct.port*, %struct.port** %2, align 8
  %124 = getelementptr inbounds %struct.port, %struct.port* %123, i32 0, i32 0
  store i64 130, i64* %124, align 8
  br label %157

125:                                              ; preds = %118, %110, %103
  %126 = load %struct.port*, %struct.port** %2, align 8
  %127 = getelementptr inbounds %struct.port, %struct.port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AD_PORT_SELECTED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.port*, %struct.port** %2, align 8
  %134 = getelementptr inbounds %struct.port, %struct.port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @AD_PORT_STANDBY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %132, %125
  %140 = load i32, i32* @AD_PORT_READY_N, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.port*, %struct.port** %2, align 8
  %143 = getelementptr inbounds %struct.port, %struct.port* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.port*, %struct.port** %2, align 8
  %147 = getelementptr inbounds %struct.port, %struct.port* %146, i32 0, i32 6
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.port*, %struct.port** %2, align 8
  %150 = getelementptr inbounds %struct.port, %struct.port* %149, i32 0, i32 6
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = call i32 @__agg_ports_are_ready(%struct.TYPE_5__* %151)
  %153 = call i32 @__set_agg_ports_ready(%struct.TYPE_5__* %148, i32 %152)
  %154 = load %struct.port*, %struct.port** %2, align 8
  %155 = getelementptr inbounds %struct.port, %struct.port* %154, i32 0, i32 0
  store i64 129, i64* %155, align 8
  br label %156

156:                                              ; preds = %139, %132
  br label %157

157:                                              ; preds = %156, %122
  br label %205

158:                                              ; preds = %16
  %159 = load %struct.port*, %struct.port** %2, align 8
  %160 = getelementptr inbounds %struct.port, %struct.port* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @AD_PORT_SELECTED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load %struct.port*, %struct.port** %2, align 8
  %167 = getelementptr inbounds %struct.port, %struct.port* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @AD_PORT_STANDBY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %165
  %173 = load %struct.port*, %struct.port** %2, align 8
  %174 = getelementptr inbounds %struct.port, %struct.port* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %172, %165, %158
  %181 = load %struct.port*, %struct.port** %2, align 8
  %182 = getelementptr inbounds %struct.port, %struct.port* %181, i32 0, i32 0
  store i64 131, i64* %182, align 8
  br label %203

183:                                              ; preds = %172
  %184 = load %struct.port*, %struct.port** %2, align 8
  %185 = getelementptr inbounds %struct.port, %struct.port* %184, i32 0, i32 6
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = icmp ne %struct.TYPE_5__* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load %struct.port*, %struct.port** %2, align 8
  %190 = getelementptr inbounds %struct.port, %struct.port* %189, i32 0, i32 6
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load %struct.port*, %struct.port** %2, align 8
  %197 = call i32 @__port_is_enabled(%struct.port* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load %struct.port*, %struct.port** %2, align 8
  %201 = call i32 @__enable_port(%struct.port* %200)
  br label %202

202:                                              ; preds = %199, %195, %188, %183
  br label %203

203:                                              ; preds = %202, %180
  br label %205

204:                                              ; preds = %16
  br label %205

205:                                              ; preds = %204, %203, %157, %102, %45, %37
  br label %206

206:                                              ; preds = %205, %13
  %207 = load %struct.port*, %struct.port** %2, align 8
  %208 = getelementptr inbounds %struct.port, %struct.port* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %3, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %295

212:                                              ; preds = %206
  %213 = load %struct.port*, %struct.port** %2, align 8
  %214 = getelementptr inbounds %struct.port, %struct.port* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load i64, i64* %3, align 8
  %217 = load %struct.port*, %struct.port** %2, align 8
  %218 = getelementptr inbounds %struct.port, %struct.port* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %215, i64 %216, i64 %219)
  %221 = load %struct.port*, %struct.port** %2, align 8
  %222 = getelementptr inbounds %struct.port, %struct.port* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  switch i64 %223, label %293 [
    i64 129, label %224
    i64 128, label %249
    i64 131, label %254
    i64 130, label %278
  ]

224:                                              ; preds = %212
  %225 = load %struct.port*, %struct.port** %2, align 8
  %226 = call i32 @__detach_bond_from_agg(%struct.port* %225)
  %227 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.port*, %struct.port** %2, align 8
  %230 = getelementptr inbounds %struct.port, %struct.port* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load %struct.port*, %struct.port** %2, align 8
  %234 = call i32 @ad_disable_collecting_distributing(%struct.port* %233)
  %235 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.port*, %struct.port** %2, align 8
  %238 = getelementptr inbounds %struct.port, %struct.port* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.port*, %struct.port** %2, align 8
  %244 = getelementptr inbounds %struct.port, %struct.port* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load %struct.port*, %struct.port** %2, align 8
  %248 = getelementptr inbounds %struct.port, %struct.port* %247, i32 0, i32 3
  store i32 1, i32* %248, align 8
  br label %294

249:                                              ; preds = %212
  %250 = load i32, i32* @AD_WAIT_WHILE_TIMER, align 4
  %251 = call i32 @__ad_timer_to_ticks(i32 %250, i32 0)
  %252 = load %struct.port*, %struct.port** %2, align 8
  %253 = getelementptr inbounds %struct.port, %struct.port* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  br label %294

254:                                              ; preds = %212
  %255 = load %struct.port*, %struct.port** %2, align 8
  %256 = call i32 @__attach_bond_to_agg(%struct.port* %255)
  %257 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %258 = load %struct.port*, %struct.port** %2, align 8
  %259 = getelementptr inbounds %struct.port, %struct.port* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.port*, %struct.port** %2, align 8
  %265 = getelementptr inbounds %struct.port, %struct.port* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.port*, %struct.port** %2, align 8
  %271 = getelementptr inbounds %struct.port, %struct.port* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load %struct.port*, %struct.port** %2, align 8
  %275 = call i32 @ad_disable_collecting_distributing(%struct.port* %274)
  %276 = load %struct.port*, %struct.port** %2, align 8
  %277 = getelementptr inbounds %struct.port, %struct.port* %276, i32 0, i32 3
  store i32 1, i32* %277, align 8
  br label %294

278:                                              ; preds = %212
  %279 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %280 = load %struct.port*, %struct.port** %2, align 8
  %281 = getelementptr inbounds %struct.port, %struct.port* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %285 = load %struct.port*, %struct.port** %2, align 8
  %286 = getelementptr inbounds %struct.port, %struct.port* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  %289 = load %struct.port*, %struct.port** %2, align 8
  %290 = call i32 @ad_enable_collecting_distributing(%struct.port* %289)
  %291 = load %struct.port*, %struct.port** %2, align 8
  %292 = getelementptr inbounds %struct.port, %struct.port* %291, i32 0, i32 3
  store i32 1, i32* %292, align 8
  br label %294

293:                                              ; preds = %212
  br label %294

294:                                              ; preds = %293, %278, %254, %249, %224
  br label %295

295:                                              ; preds = %294, %206
  ret void
}

declare dso_local i32 @__set_agg_ports_ready(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @__agg_ports_are_ready(%struct.TYPE_5__*) #1

declare dso_local i32 @__check_agg_selection_timer(%struct.port*) #1

declare dso_local i32 @__port_is_enabled(%struct.port*) #1

declare dso_local i32 @__enable_port(%struct.port*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local i32 @__detach_bond_from_agg(%struct.port*) #1

declare dso_local i32 @ad_disable_collecting_distributing(%struct.port*) #1

declare dso_local i32 @__ad_timer_to_ticks(i32, i32) #1

declare dso_local i32 @__attach_bond_to_agg(%struct.port*) #1

declare dso_local i32 @ad_enable_collecting_distributing(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
