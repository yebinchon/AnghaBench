; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64*, i32*, i64*, i64*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32*, i64, i64, i64, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"%x:CB(%x:Req=%x,Rc=%x,Ind=%x)\00", align 1
@adapter = common dso_local global %struct.TYPE_30__* null, align 8
@REMOVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"cancel RC in REMOVE state\00", align 1
@OK_FC = common dso_local global i64 0, align 8
@N_OK_FC_PENDING = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"XDI CAPI: RC cancelled Id:0x02, Ch:%02x\00", align 1
@N_XON = common dso_local global i64 0, align 8
@ASSIGN_OK = common dso_local global i64 0, align 8
@N_DISC = common dso_local global i64 0, align 8
@N_DISC_ACK = common dso_local global i64 0, align 8
@N_RX_FLOW_CONTROL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"XDI CAPI: I: pending N-XON Ch:%02x\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"XDI CAPI: I: remove faked N-XON Ch:%02x\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"dequeue msg(0x%04x) - write=%d read=%d wrap=%d\00", align 1
@MSG_IN_QUEUE_SIZE = common dso_local global i8* null, align 8
@MSG_IN_OVERHEAD = common dso_local global i8* null, align 8
@_DATA_B3_R = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Error 0x%04x from msg(0x%04x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callback(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = and i32 %21, 32767
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28, i64 %31, i32 %34)
  %36 = call i32 @dbug(i32 1, i32 %35)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** @adapter, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i64 %43
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %3, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i64 %53
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %5, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %56 = call i32 @DIVA_CAPI_SUPPORTS_NO_CANCEL(%struct.TYPE_30__* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %61, label %64

61:                                               ; preds = %1
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61, %1
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %427

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %427, label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 32768
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %369

91:                                               ; preds = %72
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @REMOVE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %149

95:                                               ; preds = %91
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @dbug(i32 1, i32 %101)
  br label %735

103:                                              ; preds = %95
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %105 = call i32 @channel_flow_control_remove(%struct.TYPE_28__* %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %129, %103
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 256
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %109
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %106

132:                                              ; preds = %106
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %132
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = call i32 @diva_free_dma_descriptor(%struct.TYPE_28__* %140, i64 %144)
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %139, %132
  br label %149

149:                                              ; preds = %148, %91
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @OK_FC, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %149
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %156, i64* %161, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* @N_OK_FC_PENDING, align 4
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %167
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64 %177, i64* %182, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 16
  store i64 0, i64* %184, align 8
  br label %262

185:                                              ; preds = %149
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %229

188:                                              ; preds = %185
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load i64, i64* %10, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %188
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %199
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %10, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 0, i64* %209, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* @OK, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %204
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 3
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %213
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %10, align 8
  %226 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %224, i64 %225)
  %227 = call i32 @dbug(i32 3, i32 %226)
  br label %735

228:                                              ; preds = %213, %204
  br label %229

229:                                              ; preds = %228, %199, %188, %185
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %10, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @N_OK_FC_PENDING, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %229
  %240 = load i32, i32* @N_OK_FC_PENDING, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %241
  store i32 %248, i32* %246, align 4
  %249 = load i64, i64* %10, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %239
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 16
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %254, %239
  br label %261

258:                                              ; preds = %229
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 16
  store i64 0, i64* %260, align 8
  br label %261

261:                                              ; preds = %258, %257
  br label %262

262:                                              ; preds = %261, %153
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 16
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %269 = load i64, i64* %9, align 8
  %270 = load i64, i64* %10, align 8
  %271 = call i32 @control_rc(%struct.TYPE_28__* %268, i64 0, i64 %269, i64 %270, i64 0, i32 1)
  br label %368

272:                                              ; preds = %262
  %273 = load i64, i64* %11, align 8
  %274 = load i64, i64* @N_XON, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %272
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %278 = load i64, i64* %10, align 8
  %279 = call i32 @channel_x_on(%struct.TYPE_28__* %277, i64 %278)
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 11
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %276
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = call i32 @control_rc(%struct.TYPE_28__* %285, i64 %286, i64 %287, i64 %288, i64 0, i32 1)
  br label %290

290:                                              ; preds = %284, %276
  br label %367

291:                                              ; preds = %272
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %330

296:                                              ; preds = %291
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %12, align 8
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 3
  store i64 0, i64* %301, align 8
  %302 = load i64, i64* %9, align 8
  %303 = load i64, i64* @ASSIGN_OK, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %305, label %322

305:                                              ; preds = %296
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 1
  store i64 0, i64* %307, align 8
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %305
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = sub nsw i64 %316, 1
  %318 = call i32 @diva_free_dma_descriptor(%struct.TYPE_28__* %313, i64 %317)
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %319, i32 0, i32 1
  store i64 0, i64* %320, align 8
  br label %321

321:                                              ; preds = %312, %305
  br label %322

322:                                              ; preds = %321, %296
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %324 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %323)
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %326 = load i64, i64* %9, align 8
  %327 = load i64, i64* %10, align 8
  %328 = load i64, i64* %12, align 8
  %329 = call i32 @control_rc(%struct.TYPE_28__* %325, i64 0, i64 %326, i64 %327, i64 %328, i32 1)
  br label %366

330:                                              ; preds = %291
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %357

335:                                              ; preds = %330
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %337 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %336)
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 4
  store i32 0, i32* %339, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 15
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 0
  store i32 1, i32* %342, align 8
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %344 = load i64, i64* %10, align 8
  %345 = call i32 @data_rc(%struct.TYPE_28__* %343, i64 %344)
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 11
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %335
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %352 = load i64, i64* %11, align 8
  %353 = load i64, i64* %9, align 8
  %354 = load i64, i64* %10, align 8
  %355 = call i32 @control_rc(%struct.TYPE_28__* %351, i64 %352, i64 %353, i64 %354, i64 0, i32 1)
  br label %356

356:                                              ; preds = %350, %335
  br label %365

357:                                              ; preds = %330
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %359 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %358)
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %361 = load i64, i64* %11, align 8
  %362 = load i64, i64* %9, align 8
  %363 = load i64, i64* %10, align 8
  %364 = call i32 @control_rc(%struct.TYPE_28__* %360, i64 %361, i64 %362, i64 %363, i64 0, i32 1)
  br label %365

365:                                              ; preds = %357, %356
  br label %366

366:                                              ; preds = %365, %322
  br label %367

367:                                              ; preds = %366, %290
  br label %368

368:                                              ; preds = %367, %267
  br label %420

369:                                              ; preds = %72
  %370 = load i64, i64* %11, align 8
  %371 = load i64, i64* @REMOVE, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %384

373:                                              ; preds = %369
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %380 = call i32 @dbug(i32 1, i32 %379)
  br label %735

381:                                              ; preds = %373
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 14
  store i64 0, i64* %383, align 8
  br label %384

384:                                              ; preds = %381, %369
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 13
  store i64 0, i64* %386, align 8
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %411

391:                                              ; preds = %384
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %392, i32 0, i32 5
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %12, align 8
  %395 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %395, i32 0, i32 5
  store i64 0, i64* %396, align 8
  %397 = load i64, i64* %9, align 8
  %398 = load i64, i64* @ASSIGN_OK, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %391
  %401 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %401, i32 0, i32 1
  store i64 0, i64* %402, align 8
  br label %403

403:                                              ; preds = %400, %391
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %405 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %404)
  %406 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %407 = load i64, i64* %9, align 8
  %408 = load i64, i64* %10, align 8
  %409 = load i64, i64* %12, align 8
  %410 = call i32 @control_rc(%struct.TYPE_28__* %406, i64 0, i64 %407, i64 %408, i64 %409, i32 0)
  br label %419

411:                                              ; preds = %384
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %413 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %412)
  %414 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %415 = load i64, i64* %11, align 8
  %416 = load i64, i64* %9, align 8
  %417 = load i64, i64* %10, align 8
  %418 = call i32 @control_rc(%struct.TYPE_28__* %414, i64 %415, i64 %416, i64 %417, i64 0, i32 0)
  br label %419

419:                                              ; preds = %411, %403
  br label %420

420:                                              ; preds = %419, %368
  %421 = load i32, i32* %13, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %425 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %424)
  br label %542

426:                                              ; preds = %420
  br label %427

427:                                              ; preds = %426, %69, %64
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %429 = call i32 @channel_xmit_xon(%struct.TYPE_28__* %428)
  %430 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %541

434:                                              ; preds = %427
  %435 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  %439 = load i32, i32* %438, align 4
  %440 = and i32 %439, 32768
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %535

442:                                              ; preds = %434
  %443 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, 15
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %14, align 8
  %448 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %448, i32 0, i32 8
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %15, align 8
  %451 = load i64, i64* %14, align 8
  %452 = load i64, i64* @N_DISC, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %458, label %454

454:                                              ; preds = %442
  %455 = load i64, i64* %14, align 8
  %456 = load i64, i64* @N_DISC_ACK, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %493

458:                                              ; preds = %454, %442
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 2
  %461 = load i64*, i64** %460, align 8
  %462 = load i64, i64* %15, align 8
  %463 = getelementptr inbounds i64, i64* %461, i64 %462
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = icmp eq i64 %464, %467
  br i1 %468, label %469, label %493

469:                                              ; preds = %458
  %470 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = load i64, i64* %15, align 8
  %474 = getelementptr inbounds i32, i32* %472, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @N_RX_FLOW_CONTROL_MASK, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %469
  %480 = load i64, i64* %15, align 8
  %481 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %480)
  %482 = call i32 @dbug(i32 3, i32 %481)
  br label %483

483:                                              ; preds = %479, %469
  %484 = load i32, i32* @N_RX_FLOW_CONTROL_MASK, align 4
  %485 = xor i32 %484, -1
  %486 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = load i64, i64* %15, align 8
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = and i32 %491, %485
  store i32 %492, i32* %490, align 4
  br label %493

493:                                              ; preds = %483, %458, %454
  %494 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %495 = call i32 @nl_ind(%struct.TYPE_28__* %494)
  %496 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %497 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %496, i32 0, i32 9
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 1
  br i1 %499, label %500, label %534

500:                                              ; preds = %493
  %501 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %501, i32 0, i32 2
  %503 = load i64*, i64** %502, align 8
  %504 = load i64, i64* %15, align 8
  %505 = getelementptr inbounds i64, i64* %503, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %507, i32 0, i32 2
  %509 = load i64, i64* %508, align 8
  %510 = icmp eq i64 %506, %509
  br i1 %510, label %511, label %534

511:                                              ; preds = %500
  %512 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %512, i32 0, i32 1
  %514 = load i32*, i32** %513, align 8
  %515 = load i64, i64* %15, align 8
  %516 = getelementptr inbounds i32, i32* %514, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @N_RX_FLOW_CONTROL_MASK, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %534

521:                                              ; preds = %511
  %522 = load i32, i32* @N_RX_FLOW_CONTROL_MASK, align 4
  %523 = xor i32 %522, -1
  %524 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = load i64, i64* %15, align 8
  %528 = getelementptr inbounds i32, i32* %526, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = and i32 %529, %523
  store i32 %530, i32* %528, align 4
  %531 = load i64, i64* %15, align 8
  %532 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %531)
  %533 = call i32 @dbug(i32 3, i32 %532)
  br label %534

534:                                              ; preds = %521, %511, %500, %493
  br label %538

535:                                              ; preds = %434
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %537 = call i32 @sig_ind(%struct.TYPE_28__* %536)
  br label %538

538:                                              ; preds = %535, %534
  %539 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %540 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %539, i32 0, i32 4
  store i32 0, i32* %540, align 8
  br label %541

541:                                              ; preds = %538, %427
  br label %542

542:                                              ; preds = %541, %423
  br label %543

543:                                              ; preds = %729, %542
  %544 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %544, i32 0, i32 12
  %546 = load i32, i32* %545, align 8
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %561, label %548

548:                                              ; preds = %543
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 11
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %561, label %553

553:                                              ; preds = %548
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %557, i32 0, i32 7
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %556, %559
  br label %561

561:                                              ; preds = %553, %548, %543
  %562 = phi i1 [ false, %548 ], [ false, %543 ], [ %560, %553 ]
  br i1 %562, label %563, label %730

563:                                              ; preds = %561
  %564 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %565 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %564, i32 0, i32 7
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %567, i32 0, i32 8
  %569 = load i32, i32* %568, align 8
  %570 = icmp eq i32 %566, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %563
  br label %576

572:                                              ; preds = %563
  %573 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %573, i32 0, i32 7
  %575 = load i32, i32* %574, align 4
  br label %576

576:                                              ; preds = %572, %571
  %577 = phi i32 [ 0, %571 ], [ %575, %572 ]
  store i32 %577, i32* %8, align 4
  %578 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %579 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %578, i32 0, i32 10
  %580 = load i64, i64* %579, align 8
  %581 = inttoptr i64 %580 to i64*
  %582 = load i32, i32* %8, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i64, i64* %581, i64 %583
  %585 = bitcast i64* %584 to %struct.TYPE_31__*
  %586 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = add nsw i32 %588, 3
  %590 = and i32 %589, 65532
  store i32 %590, i32* %7, align 4
  %591 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %591, i32 0, i32 10
  %593 = load i64, i64* %592, align 8
  %594 = inttoptr i64 %593 to i64*
  %595 = load i32, i32* %8, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i64, i64* %594, i64 %596
  %598 = bitcast i64* %597 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %598, %struct.TYPE_31__** %6, align 8
  %599 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %599, i32 0, i32 10
  %601 = load i64, i64* %600, align 8
  %602 = inttoptr i64 %601 to i64*
  %603 = load i32, i32* %8, align 4
  %604 = load i32, i32* %7, align 4
  %605 = add nsw i32 %603, %604
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i64, i64* %602, i64 %606
  %608 = bitcast i64* %607 to i32**
  %609 = load i32*, i32** %608, align 8
  store i32* %609, i32** %4, align 8
  %610 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %611 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %611, i32 0, i32 1
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %615 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %614, i32 0, i32 6
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %618 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %617, i32 0, i32 7
  %619 = load i32, i32* %618, align 4
  %620 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %621 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %620, i32 0, i32 8
  %622 = load i32, i32* %621, align 8
  %623 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %613, i32 %616, i32 %619, i32 %622)
  %624 = call i32 @dbug(i32 1, i32 %623)
  %625 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %626 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %625, i32 0, i32 7
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %629 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %628, i32 0, i32 8
  %630 = load i32, i32* %629, align 8
  %631 = icmp eq i32 %627, %630
  br i1 %631, label %632, label %644

632:                                              ; preds = %576
  %633 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %634 = ptrtoint i8* %633 to i32
  %635 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %636 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %635, i32 0, i32 8
  store i32 %634, i32* %636, align 8
  %637 = load i32, i32* %7, align 4
  %638 = load i8*, i8** @MSG_IN_OVERHEAD, align 8
  %639 = sext i32 %637 to i64
  %640 = getelementptr i8, i8* %638, i64 %639
  %641 = ptrtoint i8* %640 to i32
  %642 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %643 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %642, i32 0, i32 7
  store i32 %641, i32* %643, align 4
  br label %654

644:                                              ; preds = %576
  %645 = load i32, i32* %8, align 4
  %646 = load i32, i32* %7, align 4
  %647 = add nsw i32 %645, %646
  %648 = load i8*, i8** @MSG_IN_OVERHEAD, align 8
  %649 = sext i32 %647 to i64
  %650 = getelementptr i8, i8* %648, i64 %649
  %651 = ptrtoint i8* %650 to i32
  %652 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %653 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %652, i32 0, i32 7
  store i32 %651, i32* %653, align 4
  br label %654

654:                                              ; preds = %644, %632
  %655 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %656 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %655, i32 0, i32 7
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %659 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %658, i32 0, i32 6
  %660 = load i32, i32* %659, align 8
  %661 = icmp eq i32 %657, %660
  br i1 %661, label %662, label %671

662:                                              ; preds = %654
  %663 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %664 = ptrtoint i8* %663 to i32
  %665 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %666 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %665, i32 0, i32 6
  store i32 %664, i32* %666, align 8
  %667 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %668 = ptrtoint i8* %667 to i32
  %669 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %670 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %669, i32 0, i32 7
  store i32 %668, i32* %670, align 4
  br label %689

671:                                              ; preds = %654
  %672 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %673 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %672, i32 0, i32 7
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %676 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %675, i32 0, i32 8
  %677 = load i32, i32* %676, align 8
  %678 = icmp eq i32 %674, %677
  br i1 %678, label %679, label %688

679:                                              ; preds = %671
  %680 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %681 = ptrtoint i8* %680 to i32
  %682 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %683 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %682, i32 0, i32 7
  store i32 %681, i32* %683, align 4
  %684 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %685 = ptrtoint i8* %684 to i32
  %686 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %687 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %686, i32 0, i32 8
  store i32 %685, i32* %687, align 8
  br label %688

688:                                              ; preds = %679, %671
  br label %689

689:                                              ; preds = %688, %662
  %690 = load i32*, i32** %4, align 8
  %691 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %692 = call i32 @api_put(i32* %690, %struct.TYPE_31__* %691)
  store i32 %692, i32* %7, align 4
  %693 = load i32, i32* %7, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %719

695:                                              ; preds = %689
  %696 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %697 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %697, i32 0, i32 1
  %699 = load i64, i64* %698, align 8
  %700 = load i64, i64* @_DATA_B3_R, align 8
  %701 = icmp eq i64 %699, %700
  br i1 %701, label %702, label %711

702:                                              ; preds = %695
  %703 = load i32*, i32** %4, align 8
  %704 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %705 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %705, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %706, i32 0, i32 0
  %708 = load i64, i64* %707, align 8
  %709 = inttoptr i64 %708 to i64*
  %710 = call i32 @TransmitBufferFree(i32* %703, i64* %709)
  br label %711

711:                                              ; preds = %702, %695
  %712 = load i32, i32* %7, align 4
  %713 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %714 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %714, i32 0, i32 1
  %716 = load i64, i64* %715, align 8
  %717 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %712, i64 %716)
  %718 = call i32 @dbug(i32 1, i32 %717)
  br label %730

719:                                              ; preds = %689
  %720 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %721 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %720, i32 0, i32 9
  %722 = load i32, i32* %721, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %729

724:                                              ; preds = %719
  %725 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %726 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %725, i32 0, i32 9
  store i32 0, i32* %726, align 4
  %727 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %728 = call i32 @mixer_notify_update(%struct.TYPE_28__* %727, i32 0)
  br label %729

729:                                              ; preds = %724, %719
  br label %543

730:                                              ; preds = %711, %561
  %731 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %732 = call i32 @send_data(%struct.TYPE_28__* %731)
  %733 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %734 = call i32 @send_req(%struct.TYPE_28__* %733)
  br label %735

735:                                              ; preds = %730, %378, %221, %100
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @DIVA_CAPI_SUPPORTS_NO_CANCEL(%struct.TYPE_30__*) #1

declare dso_local i32 @channel_flow_control_remove(%struct.TYPE_28__*) #1

declare dso_local i32 @diva_free_dma_descriptor(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @control_rc(%struct.TYPE_28__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @channel_x_on(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @channel_xmit_xon(%struct.TYPE_28__*) #1

declare dso_local i32 @data_rc(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @nl_ind(%struct.TYPE_28__*) #1

declare dso_local i32 @sig_ind(%struct.TYPE_28__*) #1

declare dso_local i32 @api_put(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @TransmitBufferFree(i32*, i64*) #1

declare dso_local i32 @mixer_notify_update(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @send_data(%struct.TYPE_28__*) #1

declare dso_local i32 @send_req(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
