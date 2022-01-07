; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac2_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_8__, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@FM_SCLM = common dso_local global i32 0, align 4
@FM_SHICLM = common dso_local global i32 0, align 4
@FM_SBEC = common dso_local global i32 0, align 4
@FM_SOTRBEC = common dso_local global i32 0, align 4
@EVENT_RMT = common dso_local global i32 0, align 4
@RM_TX_STATE_CHANGE = common dso_local global i32 0, align 4
@FM_STKISS = common dso_local global i32 0, align 4
@FM_SRNGOP = common dso_local global i32 0, align 4
@RM_RING_OP = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@RM_RING_NON_OP = common dso_local global i32 0, align 4
@FM_SMISFRM = common dso_local global i32 0, align 4
@FM_SRCVOVR = common dso_local global i32 0, align 4
@FM_SRBFL = common dso_local global i32 0, align 4
@RM_OTHER_BEACON = common dso_local global i32 0, align 4
@FM_SMYBEC = common dso_local global i32 0, align 4
@RM_MY_BEACON = common dso_local global i32 0, align 4
@FM_SLOCLM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RMT : lower claim received\0A\00", align 1
@FM_SMYCLM = common dso_local global i32 0, align 4
@FM_SDUPCLM = common dso_local global i32 0, align 4
@RM_MY_CLAIM = common dso_local global i32 0, align 4
@RM_VALID_CLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RMT : higher claim received\0A\00", align 1
@FM_STRTEXP = common dso_local global i32 0, align 4
@FM_STRTEXR = common dso_local global i32 0, align 4
@RM_TRT_EXP = common dso_local global i32 0, align 4
@FM_SMULTDA = common dso_local global i32 0, align 4
@DA_FAILED = common dso_local global i32 0, align 4
@RM_DUP_ADDR = common dso_local global i32 0, align 4
@FM_STVXEXP = common dso_local global i32 0, align 4
@FM_SPHINV = common dso_local global i32 0, align 4
@FM_SSIFG = common dso_local global i32 0, align 4
@FM_STKERR = common dso_local global i32 0, align 4
@FM_SFRMCTR = common dso_local global i32 0, align 4
@FM_SERRCTR = common dso_local global i32 0, align 4
@FM_SLSTCTR = common dso_local global i32 0, align 4
@FM_SERRSF = common dso_local global i32 0, align 4
@SMT_E0114 = common dso_local global i32 0, align 4
@SMT_E0114_MSG = common dso_local global i32 0, align 4
@FM_IMSK2U = common dso_local global i32 0, align 4
@mac_imsk2u = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac2_irq(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FM_SCLM, align 4
  %11 = load i32, i32* @FM_SHICLM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FM_SBEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FM_SOTRBEC, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %9, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %21 = load i32, i32* @EVENT_RMT, align 4
  %22 = load i32, i32* @RM_TX_STATE_CHANGE, align 4
  %23 = call i32 @queue_event(%struct.s_smc* %20, i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FM_STKISS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %31 = load i32, i32* @EVENT_RMT, align 4
  %32 = load i32, i32* @RM_TX_STATE_CHANGE, align 4
  %33 = call i32 @queue_event(%struct.s_smc* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %44 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @FM_SRNGOP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %35
  %55 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %56 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @FM_SRNGOP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60, %35
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @FM_SRNGOP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %72 = call i32 @mac_ring_up(%struct.s_smc* %71, i32 1)
  %73 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %74 = load i32, i32* @EVENT_RMT, align 4
  %75 = load i32, i32* @RM_RING_OP, align 4
  %76 = call i32 @queue_event(%struct.s_smc* %73, i32 %74, i32 %75)
  %77 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %78 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i64, i64* @MAC0, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %65
  %87 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %88 = call i32 @mac_ring_up(%struct.s_smc* %87, i32 0)
  %89 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %90 = load i32, i32* @EVENT_RMT, align 4
  %91 = load i32, i32* @RM_RING_NON_OP, align 4
  %92 = call i32 @queue_event(%struct.s_smc* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %70
  br label %416

94:                                               ; preds = %60, %54
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @FM_SMISFRM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %101 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i64, i64* @MAC0, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %99, %94
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @FM_SRCVOVR, align 4
  %112 = load i32, i32* @FM_SRBFL, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %118 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %124 = call i32 @smt_stat_counter(%struct.s_smc* %123, i32 1)
  br label %125

125:                                              ; preds = %116, %109
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @FM_SOTRBEC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %132 = load i32, i32* @EVENT_RMT, align 4
  %133 = load i32, i32* @RM_OTHER_BEACON, align 4
  %134 = call i32 @queue_event(%struct.s_smc* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @FM_SMYBEC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %142 = load i32, i32* @EVENT_RMT, align 4
  %143 = load i32, i32* @RM_MY_BEACON, align 4
  %144 = call i32 @queue_event(%struct.s_smc* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @FM_SLOCLM, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @DB_RMTN(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  br label %154

154:                                              ; preds = %152, %145
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @FM_SMYCLM, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @FM_SDUPCLM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %166 = load i32, i32* @EVENT_RMT, align 4
  %167 = load i32, i32* @RM_MY_CLAIM, align 4
  %168 = call i32 @queue_event(%struct.s_smc* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %159, %154
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @FM_SDUPCLM, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %176 = load i32, i32* @EVENT_RMT, align 4
  %177 = load i32, i32* @RM_VALID_CLAIM, align 4
  %178 = call i32 @queue_event(%struct.s_smc* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* @FM_SHICLM, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = call i32 @DB_RMTN(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  br label %188

188:                                              ; preds = %186, %179
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @FM_STRTEXP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @FM_STRTEXR, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193, %188
  %199 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %200 = load i32, i32* @EVENT_RMT, align 4
  %201 = load i32, i32* @RM_TRT_EXP, align 4
  %202 = call i32 @queue_event(%struct.s_smc* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @FM_SMULTDA, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load i32, i32* @DA_FAILED, align 4
  %210 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %211 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %214 = load i32, i32* @EVENT_RMT, align 4
  %215 = load i32, i32* @RM_DUP_ADDR, align 4
  %216 = call i32 @queue_event(%struct.s_smc* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %208, %203
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @FM_SBEC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %224 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %222, %217
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @FM_SCLM, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %237 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %235, %230
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @FM_STVXEXP, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %250 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i64, i64* @MAC0, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %248, %243
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @FM_SBEC, align 4
  %261 = load i32, i32* @FM_SCLM, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %302

265:                                              ; preds = %258
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @FM_SRNGOP, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %301, label %270

270:                                              ; preds = %265
  %271 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %272 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @FM_SRNGOP, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %301

279:                                              ; preds = %270
  %280 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %281 = call i32 @mac_ring_up(%struct.s_smc* %280, i32 0)
  %282 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %283 = load i32, i32* @EVENT_RMT, align 4
  %284 = load i32, i32* @RM_RING_NON_OP, align 4
  %285 = call i32 @queue_event(%struct.s_smc* %282, i32 %283, i32 %284)
  %286 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %287 = call i32 @mac_ring_up(%struct.s_smc* %286, i32 1)
  %288 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %289 = load i32, i32* @EVENT_RMT, align 4
  %290 = load i32, i32* @RM_RING_OP, align 4
  %291 = call i32 @queue_event(%struct.s_smc* %288, i32 %289, i32 %290)
  %292 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %293 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %294, align 8
  %296 = load i64, i64* @MAC0, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %279, %270, %265
  br label %302

302:                                              ; preds = %301, %258
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* @FM_SPHINV, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %309 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %307, %302
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @FM_SSIFG, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %315
  %321 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %322 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %320, %315
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* @FM_STKISS, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %328
  %334 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %335 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 4
  br label %341

341:                                              ; preds = %333, %328
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* @FM_STKERR, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %341
  %347 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %348 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 8
  br label %354

354:                                              ; preds = %346, %341
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @FM_SFRMCTR, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %354
  %360 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %361 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = load i64, i64* @MAC0, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %368, 65536
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %366, align 4
  br label %371

371:                                              ; preds = %359, %354
  %372 = load i32, i32* %6, align 4
  %373 = load i32, i32* @FM_SERRCTR, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %388

376:                                              ; preds = %371
  %377 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %378 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = load i64, i64* @MAC0, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, 65536
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %383, align 4
  br label %388

388:                                              ; preds = %376, %371
  %389 = load i32, i32* %6, align 4
  %390 = load i32, i32* @FM_SLSTCTR, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %388
  %394 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %395 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %396, align 8
  %398 = load i64, i64* @MAC0, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %402, 65536
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %400, align 4
  br label %405

405:                                              ; preds = %393, %388
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* @FM_SERRSF, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %405
  %411 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %412 = load i32, i32* @SMT_E0114, align 4
  %413 = load i32, i32* @SMT_E0114_MSG, align 4
  %414 = call i32 @SMT_PANIC(%struct.s_smc* %411, i32 %412, i32 %413)
  br label %415

415:                                              ; preds = %410, %405
  br label %416

416:                                              ; preds = %415, %93
  %417 = load i32, i32* %6, align 4
  %418 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %419 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  store i32 %417, i32* %421, align 8
  %422 = load i32, i32* %5, align 4
  %423 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %424 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 1
  store i32 %422, i32* %426, align 4
  %427 = load i32, i32* @FM_IMSK2U, align 4
  %428 = call i32 @FM_A(i32 %427)
  %429 = load i32, i32* @mac_imsk2u, align 4
  %430 = xor i32 %429, -1
  %431 = call i32 @outpw(i32 %428, i32 %430)
  ret void
}

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @mac_ring_up(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_stat_counter(%struct.s_smc*, i32) #1

declare dso_local i32 @DB_RMTN(i32, i8*, i32, i32) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
