; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_li2_update_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_li2_update_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32*, i32 }

@adapter = common dso_local global %struct.TYPE_8__* null, align 8
@ADV_VOICE = common dso_local global i64 0, align 8
@EXT_CONTROLLER = common dso_local global i32 0, align 4
@MIXER_IC_CHANNEL_BASE = common dso_local global i32 0, align 4
@MANUFACTURER_FEATURE_SLAVE_CODEC = common dso_local global i32 0, align 4
@LI_FLAG_MONITOR = common dso_local global i32 0, align 4
@li_config_table = common dso_local global %struct.TYPE_9__* null, align 8
@LI_FLAG_MIX = common dso_local global i32 0, align 4
@LI_FLAG_PCCONNECT = common dso_local global i32 0, align 4
@LI_CHFLAG_MONITOR = common dso_local global i32 0, align 4
@LI_CHFLAG_MIX = common dso_local global i32 0, align 4
@LI_CHFLAG_LOOP = common dso_local global i32 0, align 4
@LI_FLAG_INTERCONNECT = common dso_local global i32 0, align 4
@LI_FLAG_CONFERENCE = common dso_local global i32 0, align 4
@LI2_FLAG_INTERCONNECT_A_B = common dso_local global i32 0, align 4
@LI2_FLAG_INTERCONNECT_B_A = common dso_local global i32 0, align 4
@LI2_FLAG_MONITOR_B = common dso_local global i32 0, align 4
@LI2_FLAG_MIX_B = common dso_local global i32 0, align 4
@LI2_FLAG_MONITOR_X = common dso_local global i32 0, align 4
@LI2_FLAG_MIX_X = common dso_local global i32 0, align 4
@LI2_FLAG_LOOP_B = common dso_local global i32 0, align 4
@LI2_FLAG_LOOP_PC = common dso_local global i32 0, align 4
@LI2_FLAG_LOOP_X = common dso_local global i32 0, align 4
@LI2_FLAG_PCCONNECT_A_B = common dso_local global i32 0, align 4
@LI2_FLAG_PCCONNECT_B_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i32)* @li2_update_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @li2_update_connect(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @adapter, align 8
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 127
  %24 = sext i32 %23 to i64
  %25 = call i32 @MapController(i64 %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %20, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %36
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %19, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %92, label %50

50:                                               ; preds = %6
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ADV_VOICE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp eq %struct.TYPE_7__* %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @EXT_CONTROLLER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MANUFACTURER_FEATURE_SLAVE_CODEC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 2, %85
  %87 = add nsw i32 %82, %86
  br label %90

88:                                               ; preds = %67
  %89 = load i32, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %77
  %91 = phi i32 [ %87, %77 ], [ %89, %88 ]
  store i32 %91, i32* %15, align 4
  br label %95

92:                                               ; preds = %62, %56, %50, %6
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = add nsw i32 %98, %102
  store i32 %103, i32* %16, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %150, label %108

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ADV_VOICE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %108
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = icmp eq %struct.TYPE_7__* %115, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @EXT_CONTROLLER, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %17, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MANUFACTURER_FEATURE_SLAVE_CODEC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %125
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %140 = add nsw i32 %138, %139
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 2, %143
  %145 = add nsw i32 %140, %144
  br label %148

146:                                              ; preds = %125
  %147 = load i32, i32* %17, align 4
  br label %148

148:                                              ; preds = %146, %135
  %149 = phi i32 [ %145, %135 ], [ %147, %146 ]
  store i32 %149, i32* %18, align 4
  br label %153

150:                                              ; preds = %120, %114, %108, %95
  %151 = load i32, i32* %16, align 4
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %150, %148
  %154 = load i64, i64* %11, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %235

156:                                              ; preds = %153
  %157 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %158
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %171
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @LI_FLAG_MIX, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %184
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* @LI_FLAG_MIX, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, %197
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* @LI_FLAG_PCCONNECT, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, %210
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @LI_CHFLAG_MONITOR, align 4
  %223 = load i32, i32* @LI_CHFLAG_MIX, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @LI_CHFLAG_LOOP, align 4
  %226 = or i32 %224, %225
  %227 = xor i32 %226, -1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %227
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %156, %153
  %236 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %237 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %238 = or i32 %236, %237
  %239 = xor i32 %238, -1
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %239
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %252 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %253 = or i32 %251, %252
  %254 = xor i32 %253, -1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %254
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %267 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %268 = or i32 %266, %267
  %269 = xor i32 %268, -1
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %271 = load i32, i32* %17, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %269
  store i32 %280, i32* %278, align 4
  %281 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %282 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %283 = or i32 %281, %282
  %284 = xor i32 %283, -1
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, %284
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %297 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %298 = or i32 %296, %297
  %299 = xor i32 %298, -1
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, %299
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %312 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %313 = or i32 %311, %312
  %314 = xor i32 %313, -1
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %18, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, %314
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %327 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %328 = or i32 %326, %327
  %329 = xor i32 %328, -1
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %331 = load i32, i32* %15, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %339, %329
  store i32 %340, i32* %338, align 4
  %341 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %342 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %343 = or i32 %341, %342
  %344 = xor i32 %343, -1
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %18, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, %344
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* @LI2_FLAG_INTERCONNECT_A_B, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %409

360:                                              ; preds = %235
  %361 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %363 = load i32, i32* %17, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %14, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %361
  store i32 %372, i32* %370, align 4
  %373 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %375 = load i32, i32* %18, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %14, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %373
  store i32 %384, i32* %382, align 4
  %385 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %387 = load i32, i32* %17, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %395, %385
  store i32 %396, i32* %394, align 4
  %397 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %399 = load i32, i32* %18, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %15, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %397
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %360, %235
  %410 = load i32, i32* %12, align 4
  %411 = load i32, i32* @LI2_FLAG_INTERCONNECT_B_A, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %463

414:                                              ; preds = %409
  %415 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %17, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %415
  store i32 %426, i32* %424, align 4
  %427 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %429 = load i32, i32* %14, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %18, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %437, %427
  store i32 %438, i32* %436, align 4
  %439 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %441 = load i32, i32* %15, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %17, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = or i32 %449, %439
  store i32 %450, i32* %448, align 4
  %451 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %453 = load i32, i32* %15, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %18, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %461, %451
  store i32 %462, i32* %460, align 4
  br label %463

463:                                              ; preds = %414, %409
  %464 = load i32, i32* %12, align 4
  %465 = load i32, i32* @LI2_FLAG_MONITOR_B, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %493

468:                                              ; preds = %463
  %469 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %471 = load i32, i32* %16, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %17, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %469
  store i32 %480, i32* %478, align 4
  %481 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %483 = load i32, i32* %16, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %18, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = or i32 %491, %481
  store i32 %492, i32* %490, align 4
  br label %493

493:                                              ; preds = %468, %463
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* @LI2_FLAG_MIX_B, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %523

498:                                              ; preds = %493
  %499 = load i32, i32* @LI_FLAG_MIX, align 4
  %500 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %501 = load i32, i32* %17, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 0
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %16, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %509, %499
  store i32 %510, i32* %508, align 4
  %511 = load i32, i32* @LI_FLAG_MIX, align 4
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %513 = load i32, i32* %18, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 0
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %16, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = or i32 %521, %511
  store i32 %522, i32* %520, align 4
  br label %523

523:                                              ; preds = %498, %493
  %524 = load i32, i32* %12, align 4
  %525 = load i32, i32* @LI2_FLAG_MONITOR_X, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %537

528:                                              ; preds = %523
  %529 = load i32, i32* @LI_CHFLAG_MONITOR, align 4
  %530 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %531 = load i32, i32* %16, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = or i32 %535, %529
  store i32 %536, i32* %534, align 8
  br label %537

537:                                              ; preds = %528, %523
  %538 = load i32, i32* %12, align 4
  %539 = load i32, i32* @LI2_FLAG_MIX_X, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %551

542:                                              ; preds = %537
  %543 = load i32, i32* @LI_CHFLAG_MIX, align 4
  %544 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %545 = load i32, i32* %16, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = or i32 %549, %543
  store i32 %550, i32* %548, align 8
  br label %551

551:                                              ; preds = %542, %537
  %552 = load i32, i32* %12, align 4
  %553 = load i32, i32* @LI2_FLAG_LOOP_B, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %605

556:                                              ; preds = %551
  %557 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %559 = load i32, i32* %17, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %17, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = or i32 %567, %557
  store i32 %568, i32* %566, align 4
  %569 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %571 = load i32, i32* %18, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 0
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* %17, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = or i32 %579, %569
  store i32 %580, i32* %578, align 4
  %581 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %582 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %583 = load i32, i32* %17, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i32 0, i32 0
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %18, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = or i32 %591, %581
  store i32 %592, i32* %590, align 4
  %593 = load i32, i32* @LI_FLAG_INTERCONNECT, align 4
  %594 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %595 = load i32, i32* %18, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %594, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %597, i32 0, i32 0
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* %18, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = or i32 %603, %593
  store i32 %604, i32* %602, align 4
  br label %605

605:                                              ; preds = %556, %551
  %606 = load i32, i32* %12, align 4
  %607 = load i32, i32* @LI2_FLAG_LOOP_PC, align 4
  %608 = and i32 %606, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %623

610:                                              ; preds = %605
  %611 = load i32, i32* @LI_FLAG_PCCONNECT, align 4
  %612 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %613 = load i32, i32* %16, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 0
  %617 = load i32*, i32** %616, align 8
  %618 = load i32, i32* %16, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = or i32 %621, %611
  store i32 %622, i32* %620, align 4
  br label %623

623:                                              ; preds = %610, %605
  %624 = load i32, i32* %12, align 4
  %625 = load i32, i32* @LI2_FLAG_LOOP_X, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %637

628:                                              ; preds = %623
  %629 = load i32, i32* @LI_CHFLAG_LOOP, align 4
  %630 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %631 = load i32, i32* %16, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 8
  %636 = or i32 %635, %629
  store i32 %636, i32* %634, align 8
  br label %637

637:                                              ; preds = %628, %623
  %638 = load i32, i32* %12, align 4
  %639 = load i32, i32* @LI2_FLAG_PCCONNECT_A_B, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %655

642:                                              ; preds = %637
  %643 = load i32, i32* @LI_FLAG_PCCONNECT, align 4
  %644 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %645 = load i32, i32* %18, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i64 %646
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %647, i32 0, i32 0
  %649 = load i32*, i32** %648, align 8
  %650 = load i32, i32* %15, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i32, i32* %649, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = or i32 %653, %643
  store i32 %654, i32* %652, align 4
  br label %655

655:                                              ; preds = %642, %637
  %656 = load i32, i32* %12, align 4
  %657 = load i32, i32* @LI2_FLAG_PCCONNECT_B_A, align 4
  %658 = and i32 %656, %657
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %673

660:                                              ; preds = %655
  %661 = load i32, i32* @LI_FLAG_PCCONNECT, align 4
  %662 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %663 = load i32, i32* %15, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i64 %664
  %666 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %665, i32 0, i32 0
  %667 = load i32*, i32** %666, align 8
  %668 = load i32, i32* %18, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i32, i32* %667, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = or i32 %671, %661
  store i32 %672, i32* %670, align 4
  br label %673

673:                                              ; preds = %660, %655
  %674 = load i32, i32* %14, align 4
  %675 = load i32, i32* %15, align 4
  %676 = icmp ne i32 %674, %675
  br i1 %676, label %677, label %702

677:                                              ; preds = %673
  %678 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %679 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %680 = load i32, i32* %14, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i64 %681
  %683 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %682, i32 0, i32 0
  %684 = load i32*, i32** %683, align 8
  %685 = load i32, i32* %15, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %684, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = or i32 %688, %678
  store i32 %689, i32* %687, align 4
  %690 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %691 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %692 = load i32, i32* %15, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %691, i64 %693
  %695 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %694, i32 0, i32 0
  %696 = load i32*, i32** %695, align 8
  %697 = load i32, i32* %14, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %696, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = or i32 %700, %690
  store i32 %701, i32* %699, align 4
  br label %702

702:                                              ; preds = %677, %673
  %703 = load i32, i32* %17, align 4
  %704 = load i32, i32* %18, align 4
  %705 = icmp ne i32 %703, %704
  br i1 %705, label %706, label %731

706:                                              ; preds = %702
  %707 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %708 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %709 = load i32, i32* %17, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %708, i64 %710
  %712 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %711, i32 0, i32 0
  %713 = load i32*, i32** %712, align 8
  %714 = load i32, i32* %18, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %713, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = or i32 %717, %707
  store i32 %718, i32* %716, align 4
  %719 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %720 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %721 = load i32, i32* %18, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %720, i64 %722
  %724 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %723, i32 0, i32 0
  %725 = load i32*, i32** %724, align 8
  %726 = load i32, i32* %17, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, i32* %725, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = or i32 %729, %719
  store i32 %730, i32* %728, align 4
  br label %731

731:                                              ; preds = %706, %702
  ret void
}

declare dso_local i32 @MapController(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
