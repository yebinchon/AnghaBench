; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_li_update_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_li_update_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32* }

@adapter = common dso_local global %struct.TYPE_8__* null, align 8
@ADV_VOICE = common dso_local global i64 0, align 8
@EXT_CONTROLLER = common dso_local global i32 0, align 4
@MIXER_IC_CHANNEL_BASE = common dso_local global i32 0, align 4
@MANUFACTURER_FEATURE_SLAVE_CODEC = common dso_local global i32 0, align 4
@LI_FLAG_MONITOR = common dso_local global i32 0, align 4
@li_config_table = common dso_local global %struct.TYPE_9__* null, align 8
@LI_FLAG_ANNOUNCEMENT = common dso_local global i32 0, align 4
@LI_FLAG_MIX = common dso_local global i32 0, align 4
@LI_FLAG_CONFERENCE = common dso_local global i32 0, align 4
@li_total_channels = common dso_local global i32 0, align 4
@LI_FLAG_CONFERENCE_A_B = common dso_local global i32 0, align 4
@LI_FLAG_CONFERENCE_B_A = common dso_local global i32 0, align 4
@LI_FLAG_MONITOR_A = common dso_local global i32 0, align 4
@LI_FLAG_MONITOR_B = common dso_local global i32 0, align 4
@LI_FLAG_ANNOUNCEMENT_A = common dso_local global i32 0, align 4
@LI_FLAG_ANNOUNCEMENT_B = common dso_local global i32 0, align 4
@LI_FLAG_MIX_A = common dso_local global i32 0, align 4
@LI_FLAG_MIX_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i32)* @li_update_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @li_update_connect(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32 %3, i64 %4, i32 %5) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @adapter, align 8
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 127
  %25 = sext i32 %24 to i64
  %26 = call i32 @MapController(i64 %25)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %28
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %21, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %20, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ADV_VOICE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp eq %struct.TYPE_7__* %58, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @EXT_CONTROLLER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MANUFACTURER_FEATURE_SLAVE_CODEC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 2, %86
  %88 = add nsw i32 %83, %87
  br label %91

89:                                               ; preds = %68
  %90 = load i32, i32* %15, align 4
  br label %91

91:                                               ; preds = %89, %78
  %92 = phi i32 [ %88, %78 ], [ %90, %89 ]
  store i32 %92, i32* %16, align 4
  br label %96

93:                                               ; preds = %63, %57, %51, %6
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %93, %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = add nsw i32 %99, %103
  store i32 %104, i32* %17, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %151, label %109

109:                                              ; preds = %96
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ADV_VOICE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %151

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = icmp eq %struct.TYPE_7__* %116, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @EXT_CONTROLLER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %18, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MANUFACTURER_FEATURE_SLAVE_CODEC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %126
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MIXER_IC_CHANNEL_BASE, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 2, %144
  %146 = add nsw i32 %141, %145
  br label %149

147:                                              ; preds = %126
  %148 = load i32, i32* %18, align 4
  br label %149

149:                                              ; preds = %147, %136
  %150 = phi i32 [ %146, %136 ], [ %148, %147 ]
  store i32 %150, i32* %19, align 4
  br label %154

151:                                              ; preds = %121, %115, %109, %96
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %151, %149
  %155 = load i64, i64* %11, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %214

157:                                              ; preds = %154
  %158 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %159
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %172
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %185 = load i32, i32* @LI_FLAG_MIX, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %187
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %200 = load i32, i32* @LI_FLAG_MIX, align 4
  %201 = or i32 %199, %200
  %202 = xor i32 %201, -1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, %202
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %157, %154
  %215 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %216
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %19, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, %229
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %242 = load i32, i32* @LI_FLAG_MIX, align 4
  %243 = or i32 %241, %242
  %244 = xor i32 %243, -1
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %244
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %257 = load i32, i32* @LI_FLAG_MIX, align 4
  %258 = or i32 %256, %257
  %259 = xor i32 %258, -1
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, %259
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %18, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %301

274:                                              ; preds = %214
  %275 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %18, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, %276
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %19, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, %289
  store i32 %300, i32* %298, align 4
  br label %470

301:                                              ; preds = %214
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %18, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %343

315:                                              ; preds = %301
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %339, %315
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* @li_total_channels, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %342

320:                                              ; preds = %316
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* %15, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %338

324:                                              ; preds = %320
  %325 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %326 = xor i32 %325, -1
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = and i32 %336, %326
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %324, %320
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %13, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %13, align 4
  br label %316

342:                                              ; preds = %316
  br label %343

343:                                              ; preds = %342, %301
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %345 = load i32, i32* %16, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %18, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %385

357:                                              ; preds = %343
  store i32 0, i32* %13, align 4
  br label %358

358:                                              ; preds = %381, %357
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* @li_total_channels, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %384

362:                                              ; preds = %358
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* %16, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %362
  %367 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %368 = xor i32 %367, -1
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %378, %368
  store i32 %379, i32* %377, align 4
  br label %380

380:                                              ; preds = %366, %362
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %13, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %13, align 4
  br label %358

384:                                              ; preds = %358
  br label %385

385:                                              ; preds = %384, %343
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %387 = load i32, i32* %18, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %427

399:                                              ; preds = %385
  store i32 0, i32* %13, align 4
  br label %400

400:                                              ; preds = %423, %399
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* @li_total_channels, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %426

404:                                              ; preds = %400
  %405 = load i32, i32* %13, align 4
  %406 = load i32, i32* %15, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %422

408:                                              ; preds = %404
  %409 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %410 = xor i32 %409, -1
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %412 = load i32, i32* %13, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %15, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %420, %410
  store i32 %421, i32* %419, align 4
  br label %422

422:                                              ; preds = %408, %404
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %13, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %13, align 4
  br label %400

426:                                              ; preds = %400
  br label %427

427:                                              ; preds = %426, %385
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %429 = load i32, i32* %18, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %16, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %469

441:                                              ; preds = %427
  store i32 0, i32* %13, align 4
  br label %442

442:                                              ; preds = %465, %441
  %443 = load i32, i32* %13, align 4
  %444 = load i32, i32* @li_total_channels, align 4
  %445 = icmp slt i32 %443, %444
  br i1 %445, label %446, label %468

446:                                              ; preds = %442
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %16, align 4
  %449 = icmp ne i32 %447, %448
  br i1 %449, label %450, label %464

450:                                              ; preds = %446
  %451 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %452 = xor i32 %451, -1
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %454 = load i32, i32* %13, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %16, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = and i32 %462, %452
  store i32 %463, i32* %461, align 4
  br label %464

464:                                              ; preds = %450, %446
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %13, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %13, align 4
  br label %442

468:                                              ; preds = %442
  br label %469

469:                                              ; preds = %468, %427
  br label %470

470:                                              ; preds = %469, %274
  %471 = load i32, i32* %12, align 4
  %472 = load i32, i32* @LI_FLAG_CONFERENCE_A_B, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %524

475:                                              ; preds = %470
  %476 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %478 = load i32, i32* %18, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %15, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = or i32 %486, %476
  store i32 %487, i32* %485, align 4
  %488 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %490 = load i32, i32* %19, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 0
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %15, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = or i32 %498, %488
  store i32 %499, i32* %497, align 4
  %500 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %501 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %502 = load i32, i32* %18, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 0
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %16, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = or i32 %510, %500
  store i32 %511, i32* %509, align 4
  %512 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %514 = load i32, i32* %19, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %16, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %522, %512
  store i32 %523, i32* %521, align 4
  br label %524

524:                                              ; preds = %475, %470
  %525 = load i32, i32* %12, align 4
  %526 = load i32, i32* @LI_FLAG_CONFERENCE_B_A, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %578

529:                                              ; preds = %524
  %530 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %531 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %532 = load i32, i32* %15, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %534, i32 0, i32 0
  %536 = load i32*, i32** %535, align 8
  %537 = load i32, i32* %18, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = or i32 %540, %530
  store i32 %541, i32* %539, align 4
  %542 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %543 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %544 = load i32, i32* %15, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %19, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = or i32 %552, %542
  store i32 %553, i32* %551, align 4
  %554 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %555 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %556 = load i32, i32* %16, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 0
  %560 = load i32*, i32** %559, align 8
  %561 = load i32, i32* %18, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = or i32 %564, %554
  store i32 %565, i32* %563, align 4
  %566 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %567 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %568 = load i32, i32* %16, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = load i32, i32* %19, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = or i32 %576, %566
  store i32 %577, i32* %575, align 4
  br label %578

578:                                              ; preds = %529, %524
  %579 = load i32, i32* %12, align 4
  %580 = load i32, i32* @LI_FLAG_MONITOR_A, align 4
  %581 = and i32 %579, %580
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %608

583:                                              ; preds = %578
  %584 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %585 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %586 = load i32, i32* %14, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 0
  %590 = load i32*, i32** %589, align 8
  %591 = load i32, i32* %15, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = or i32 %594, %584
  store i32 %595, i32* %593, align 4
  %596 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %597 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %598 = load i32, i32* %14, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %597, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %600, i32 0, i32 0
  %602 = load i32*, i32** %601, align 8
  %603 = load i32, i32* %16, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = or i32 %606, %596
  store i32 %607, i32* %605, align 4
  br label %608

608:                                              ; preds = %583, %578
  %609 = load i32, i32* %12, align 4
  %610 = load i32, i32* @LI_FLAG_MONITOR_B, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %638

613:                                              ; preds = %608
  %614 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %615 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %616 = load i32, i32* %14, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 0
  %620 = load i32*, i32** %619, align 8
  %621 = load i32, i32* %18, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %620, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = or i32 %624, %614
  store i32 %625, i32* %623, align 4
  %626 = load i32, i32* @LI_FLAG_MONITOR, align 4
  %627 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %628 = load i32, i32* %14, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %627, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  %632 = load i32*, i32** %631, align 8
  %633 = load i32, i32* %19, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i32, i32* %632, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = or i32 %636, %626
  store i32 %637, i32* %635, align 4
  br label %638

638:                                              ; preds = %613, %608
  %639 = load i32, i32* %12, align 4
  %640 = load i32, i32* @LI_FLAG_ANNOUNCEMENT_A, align 4
  %641 = and i32 %639, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %668

643:                                              ; preds = %638
  %644 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %645 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %646 = load i32, i32* %15, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %648, i32 0, i32 0
  %650 = load i32*, i32** %649, align 8
  %651 = load i32, i32* %14, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %650, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = or i32 %654, %644
  store i32 %655, i32* %653, align 4
  %656 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %657 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %658 = load i32, i32* %16, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %657, i64 %659
  %661 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %660, i32 0, i32 0
  %662 = load i32*, i32** %661, align 8
  %663 = load i32, i32* %14, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32, i32* %662, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = or i32 %666, %656
  store i32 %667, i32* %665, align 4
  br label %668

668:                                              ; preds = %643, %638
  %669 = load i32, i32* %12, align 4
  %670 = load i32, i32* @LI_FLAG_ANNOUNCEMENT_B, align 4
  %671 = and i32 %669, %670
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %698

673:                                              ; preds = %668
  %674 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %675 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %676 = load i32, i32* %18, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %675, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %678, i32 0, i32 0
  %680 = load i32*, i32** %679, align 8
  %681 = load i32, i32* %14, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %680, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = or i32 %684, %674
  store i32 %685, i32* %683, align 4
  %686 = load i32, i32* @LI_FLAG_ANNOUNCEMENT, align 4
  %687 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %688 = load i32, i32* %19, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %687, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %690, i32 0, i32 0
  %692 = load i32*, i32** %691, align 8
  %693 = load i32, i32* %14, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, i32* %692, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = or i32 %696, %686
  store i32 %697, i32* %695, align 4
  br label %698

698:                                              ; preds = %673, %668
  %699 = load i32, i32* %12, align 4
  %700 = load i32, i32* @LI_FLAG_MIX_A, align 4
  %701 = and i32 %699, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %728

703:                                              ; preds = %698
  %704 = load i32, i32* @LI_FLAG_MIX, align 4
  %705 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %706 = load i32, i32* %15, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %705, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %708, i32 0, i32 0
  %710 = load i32*, i32** %709, align 8
  %711 = load i32, i32* %14, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i32, i32* %710, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = or i32 %714, %704
  store i32 %715, i32* %713, align 4
  %716 = load i32, i32* @LI_FLAG_MIX, align 4
  %717 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %718 = load i32, i32* %16, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %717, i64 %719
  %721 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %720, i32 0, i32 0
  %722 = load i32*, i32** %721, align 8
  %723 = load i32, i32* %14, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %722, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = or i32 %726, %716
  store i32 %727, i32* %725, align 4
  br label %728

728:                                              ; preds = %703, %698
  %729 = load i32, i32* %12, align 4
  %730 = load i32, i32* @LI_FLAG_MIX_B, align 4
  %731 = and i32 %729, %730
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %758

733:                                              ; preds = %728
  %734 = load i32, i32* @LI_FLAG_MIX, align 4
  %735 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %736 = load i32, i32* %18, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %735, i64 %737
  %739 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %738, i32 0, i32 0
  %740 = load i32*, i32** %739, align 8
  %741 = load i32, i32* %14, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, i32* %740, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = or i32 %744, %734
  store i32 %745, i32* %743, align 4
  %746 = load i32, i32* @LI_FLAG_MIX, align 4
  %747 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %748 = load i32, i32* %19, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %747, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %750, i32 0, i32 0
  %752 = load i32*, i32** %751, align 8
  %753 = load i32, i32* %14, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32, i32* %752, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = or i32 %756, %746
  store i32 %757, i32* %755, align 4
  br label %758

758:                                              ; preds = %733, %728
  %759 = load i32, i32* %15, align 4
  %760 = load i32, i32* %16, align 4
  %761 = icmp ne i32 %759, %760
  br i1 %761, label %762, label %787

762:                                              ; preds = %758
  %763 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %764 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %765 = load i32, i32* %15, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %764, i64 %766
  %768 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %767, i32 0, i32 0
  %769 = load i32*, i32** %768, align 8
  %770 = load i32, i32* %16, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = or i32 %773, %763
  store i32 %774, i32* %772, align 4
  %775 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %776 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %777 = load i32, i32* %16, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %776, i64 %778
  %780 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %779, i32 0, i32 0
  %781 = load i32*, i32** %780, align 8
  %782 = load i32, i32* %15, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i32, i32* %781, i64 %783
  %785 = load i32, i32* %784, align 4
  %786 = or i32 %785, %775
  store i32 %786, i32* %784, align 4
  br label %787

787:                                              ; preds = %762, %758
  %788 = load i32, i32* %18, align 4
  %789 = load i32, i32* %19, align 4
  %790 = icmp ne i32 %788, %789
  br i1 %790, label %791, label %816

791:                                              ; preds = %787
  %792 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %793 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %794 = load i32, i32* %18, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %793, i64 %795
  %797 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %796, i32 0, i32 0
  %798 = load i32*, i32** %797, align 8
  %799 = load i32, i32* %19, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds i32, i32* %798, i64 %800
  %802 = load i32, i32* %801, align 4
  %803 = or i32 %802, %792
  store i32 %803, i32* %801, align 4
  %804 = load i32, i32* @LI_FLAG_CONFERENCE, align 4
  %805 = load %struct.TYPE_9__*, %struct.TYPE_9__** @li_config_table, align 8
  %806 = load i32, i32* %19, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %805, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %808, i32 0, i32 0
  %810 = load i32*, i32** %809, align 8
  %811 = load i32, i32* %18, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, i32* %810, i64 %812
  %814 = load i32, i32* %813, align 4
  %815 = or i32 %814, %804
  store i32 %815, i32* %813, align 4
  br label %816

816:                                              ; preds = %791, %787
  ret void
}

declare dso_local i32 @MapController(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
