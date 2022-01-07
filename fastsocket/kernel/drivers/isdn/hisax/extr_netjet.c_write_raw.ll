; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_write_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_18__*, i64, i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32*, i64*, i64*, i64, i64*, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@BC_FLG_BUSY = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"tiger write_raw: c%d %p-%p %d/%d %d %x\00", align 1
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"snd\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"tiger write_raw: NULL skb s_cnt %d\00", align 1
@FLG_LLI_L1WAKEUP = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@B_ACKPENDING = common dso_local global i32 0, align 4
@NETJET_DMA_TXSIZE = common dso_local global i32 0, align 4
@BC_FLG_HALF = common dso_local global i32 0, align 4
@BC_FLG_NOFRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"tiger write_raw: fill rest %d\00", align 1
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"tiger write_raw: fill half\00", align 1
@BC_FLG_EMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"tiger write_raw: fill full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i64*, i32)* @write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_raw(%struct.BCState* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.BCState*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %5, align 8
  store i64* %13, i64** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %440

17:                                               ; preds = %3
  %18 = load i32, i32* @BC_FLG_BUSY, align 4
  %19 = load %struct.BCState*, %struct.BCState** %4, align 8
  %20 = getelementptr inbounds %struct.BCState, %struct.BCState* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %367

23:                                               ; preds = %17
  %24 = load %struct.BCState*, %struct.BCState** %4, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.BCState*, %struct.BCState** %4, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, %34
  store i32 %40, i32* %38, align 8
  br label %52

41:                                               ; preds = %23
  %42 = load %struct.BCState*, %struct.BCState** %4, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load %struct.BCState*, %struct.BCState** %4, align 8
  %49 = getelementptr inbounds %struct.BCState, %struct.BCState* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %41, %31
  %53 = load %struct.BCState*, %struct.BCState** %4, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i64 4294902015, i64* %7, align 8
  br label %59

58:                                               ; preds = %52
  store i64 4294967040, i64* %7, align 8
  br label %59

59:                                               ; preds = %58, %57
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %115, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load %struct.BCState*, %struct.BCState** %4, align 8
  %66 = getelementptr inbounds %struct.BCState, %struct.BCState* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.BCState*, %struct.BCState** %4, align 8
  %71 = getelementptr inbounds %struct.BCState, %struct.BCState* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = and i32 %78, 65280
  br label %89

80:                                               ; preds = %64
  %81 = load %struct.BCState*, %struct.BCState** %4, align 8
  %82 = getelementptr inbounds %struct.BCState, %struct.BCState* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %80, %69
  %90 = phi i32 [ %79, %69 ], [ %88, %80 ]
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %94, %92
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %9, align 8
  %99 = load i64, i64* %97, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %97, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load %struct.BCState*, %struct.BCState** %4, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ugt i64* %101, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %89
  %109 = load %struct.BCState*, %struct.BCState** %4, align 8
  %110 = getelementptr inbounds %struct.BCState, %struct.BCState* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  store i64* %113, i64** %9, align 8
  br label %114

114:                                              ; preds = %108, %89
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %10, align 8
  br label %60

118:                                              ; preds = %60
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.BCState*, %struct.BCState** %4, align 8
  %121 = getelementptr inbounds %struct.BCState, %struct.BCState* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %119
  store i64 %125, i64* %123, align 8
  %126 = load %struct.BCState*, %struct.BCState** %4, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 0
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @L1_DEB_HSCX, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %118
  %135 = load %struct.BCState*, %struct.BCState** %4, align 8
  %136 = getelementptr inbounds %struct.BCState, %struct.BCState* %135, i32 0, i32 0
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load %struct.BCState*, %struct.BCState** %4, align 8
  %139 = getelementptr inbounds %struct.BCState, %struct.BCState* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %5, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.BCState*, %struct.BCState** %4, align 8
  %146 = getelementptr inbounds %struct.BCState, %struct.BCState* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.BCState*, %struct.BCState** %4, align 8
  %151 = getelementptr inbounds %struct.BCState, %struct.BCState* %150, i32 0, i32 0
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.TYPE_18__*, i8*, ...) @debugl1(%struct.TYPE_18__* %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %140, i64* %141, i64* %142, i64 %143, i32 %144, i32 %149, i32 %156)
  br label %158

158:                                              ; preds = %134, %118
  %159 = load %struct.BCState*, %struct.BCState** %4, align 8
  %160 = getelementptr inbounds %struct.BCState, %struct.BCState* %159, i32 0, i32 0
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load %struct.BCState*, %struct.BCState** %4, align 8
  %169 = getelementptr inbounds %struct.BCState, %struct.BCState* %168, i32 0, i32 0
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = load %struct.BCState*, %struct.BCState** %4, align 8
  %172 = getelementptr inbounds %struct.BCState, %struct.BCState* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @printframe(%struct.TYPE_18__* %170, i32* %175, i64 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %167, %158
  %179 = load i64, i64* %11, align 8
  %180 = load %struct.BCState*, %struct.BCState** %4, align 8
  %181 = getelementptr inbounds %struct.BCState, %struct.BCState* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 %179
  store i32* %185, i32** %183, align 8
  %186 = load i64*, i64** %9, align 8
  %187 = load %struct.BCState*, %struct.BCState** %4, align 8
  %188 = getelementptr inbounds %struct.BCState, %struct.BCState* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 5
  store i64* %186, i64** %190, align 8
  %191 = load %struct.BCState*, %struct.BCState** %4, align 8
  %192 = getelementptr inbounds %struct.BCState, %struct.BCState* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %366, label %197

197:                                              ; preds = %178
  %198 = load %struct.BCState*, %struct.BCState** %4, align 8
  %199 = getelementptr inbounds %struct.BCState, %struct.BCState* %198, i32 0, i32 7
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  %201 = icmp ne %struct.TYPE_17__* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %197
  %203 = load %struct.BCState*, %struct.BCState** %4, align 8
  %204 = getelementptr inbounds %struct.BCState, %struct.BCState* %203, i32 0, i32 0
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = load i64, i64* %11, align 8
  %207 = call i32 (%struct.TYPE_18__*, i8*, ...) @debugl1(%struct.TYPE_18__* %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %206)
  br label %255

208:                                              ; preds = %197
  %209 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %210 = load %struct.BCState*, %struct.BCState** %4, align 8
  %211 = getelementptr inbounds %struct.BCState, %struct.BCState* %210, i32 0, i32 10
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = call i64 @test_bit(i32 %209, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %248

217:                                              ; preds = %208
  %218 = load i64, i64* @PACKET_NOACK, align 8
  %219 = load %struct.BCState*, %struct.BCState** %4, align 8
  %220 = getelementptr inbounds %struct.BCState, %struct.BCState* %219, i32 0, i32 7
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %218, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %217
  %226 = load %struct.BCState*, %struct.BCState** %4, align 8
  %227 = getelementptr inbounds %struct.BCState, %struct.BCState* %226, i32 0, i32 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @spin_lock_irqsave(i32* %227, i32 %228)
  %230 = load %struct.BCState*, %struct.BCState** %4, align 8
  %231 = getelementptr inbounds %struct.BCState, %struct.BCState* %230, i32 0, i32 7
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.BCState*, %struct.BCState** %4, align 8
  %236 = getelementptr inbounds %struct.BCState, %struct.BCState* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.BCState*, %struct.BCState** %4, align 8
  %242 = getelementptr inbounds %struct.BCState, %struct.BCState* %241, i32 0, i32 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @spin_unlock_irqrestore(i32* %242, i32 %243)
  %245 = load %struct.BCState*, %struct.BCState** %4, align 8
  %246 = load i32, i32* @B_ACKPENDING, align 4
  %247 = call i32 @schedule_event(%struct.BCState* %245, i32 %246)
  br label %248

248:                                              ; preds = %225, %217, %208
  %249 = load %struct.BCState*, %struct.BCState** %4, align 8
  %250 = getelementptr inbounds %struct.BCState, %struct.BCState* %249, i32 0, i32 7
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = call i32 @dev_kfree_skb_any(%struct.TYPE_17__* %251)
  %253 = load %struct.BCState*, %struct.BCState** %4, align 8
  %254 = getelementptr inbounds %struct.BCState, %struct.BCState* %253, i32 0, i32 7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %254, align 8
  br label %255

255:                                              ; preds = %248, %202
  %256 = load i32, i32* @BC_FLG_BUSY, align 4
  %257 = load %struct.BCState*, %struct.BCState** %4, align 8
  %258 = getelementptr inbounds %struct.BCState, %struct.BCState* %257, i32 0, i32 2
  %259 = call i64 @test_and_clear_bit(i32 %256, i32* %258)
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %11, align 8
  %263 = sub i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = load %struct.BCState*, %struct.BCState** %4, align 8
  %266 = getelementptr inbounds %struct.BCState, %struct.BCState* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 6
  store i32 %264, i32* %268, align 8
  %269 = load %struct.BCState*, %struct.BCState** %4, align 8
  %270 = getelementptr inbounds %struct.BCState, %struct.BCState* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %275 = sdiv i32 %274, 2
  %276 = icmp sgt i32 %273, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %255
  %278 = load i32, i32* @BC_FLG_HALF, align 4
  %279 = load %struct.BCState*, %struct.BCState** %4, align 8
  %280 = getelementptr inbounds %struct.BCState, %struct.BCState* %279, i32 0, i32 2
  %281 = call i32 @test_and_set_bit(i32 %278, i32* %280)
  br label %291

282:                                              ; preds = %255
  %283 = load i32, i32* @BC_FLG_HALF, align 4
  %284 = load %struct.BCState*, %struct.BCState** %4, align 8
  %285 = getelementptr inbounds %struct.BCState, %struct.BCState* %284, i32 0, i32 2
  %286 = call i64 @test_and_clear_bit(i32 %283, i32* %285)
  %287 = load i32, i32* @BC_FLG_NOFRAME, align 4
  %288 = load %struct.BCState*, %struct.BCState** %4, align 8
  %289 = getelementptr inbounds %struct.BCState, %struct.BCState* %288, i32 0, i32 2
  %290 = call i32 @test_and_set_bit(i32 %287, i32* %289)
  br label %291

291:                                              ; preds = %282, %277
  %292 = load %struct.BCState*, %struct.BCState** %4, align 8
  %293 = getelementptr inbounds %struct.BCState, %struct.BCState* %292, i32 0, i32 6
  %294 = call %struct.TYPE_17__* @skb_dequeue(i32* %293)
  %295 = load %struct.BCState*, %struct.BCState** %4, align 8
  %296 = getelementptr inbounds %struct.BCState, %struct.BCState* %295, i32 0, i32 7
  store %struct.TYPE_17__* %294, %struct.TYPE_17__** %296, align 8
  %297 = icmp ne %struct.TYPE_17__* %294, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %291
  %299 = load %struct.BCState*, %struct.BCState** %4, align 8
  %300 = call i32 @netjet_fill_dma(%struct.BCState* %299)
  br label %365

301:                                              ; preds = %291
  %302 = load i64, i64* %7, align 8
  %303 = xor i64 %302, 4294967295
  store i64 %303, i64* %7, align 8
  %304 = load i64, i64* %11, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = icmp ult i64 %304, %306
  br i1 %307, label %308, label %357

308:                                              ; preds = %301
  %309 = load i64, i64* %11, align 8
  store i64 %309, i64* %10, align 8
  br label %310

310:                                              ; preds = %335, %308
  %311 = load i64, i64* %10, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = icmp ult i64 %311, %313
  br i1 %314, label %315, label %338

315:                                              ; preds = %310
  %316 = load i64, i64* %7, align 8
  %317 = load i64*, i64** %9, align 8
  %318 = getelementptr inbounds i64, i64* %317, i32 1
  store i64* %318, i64** %9, align 8
  %319 = load i64, i64* %317, align 8
  %320 = or i64 %319, %316
  store i64 %320, i64* %317, align 8
  %321 = load i64*, i64** %9, align 8
  %322 = load %struct.BCState*, %struct.BCState** %4, align 8
  %323 = getelementptr inbounds %struct.BCState, %struct.BCState* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 2
  %326 = load i64*, i64** %325, align 8
  %327 = icmp ugt i64* %321, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %315
  %329 = load %struct.BCState*, %struct.BCState** %4, align 8
  %330 = getelementptr inbounds %struct.BCState, %struct.BCState* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 3
  %333 = load i64*, i64** %332, align 8
  store i64* %333, i64** %9, align 8
  br label %334

334:                                              ; preds = %328, %315
  br label %335

335:                                              ; preds = %334
  %336 = load i64, i64* %10, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %10, align 8
  br label %310

338:                                              ; preds = %310
  %339 = load %struct.BCState*, %struct.BCState** %4, align 8
  %340 = getelementptr inbounds %struct.BCState, %struct.BCState* %339, i32 0, i32 0
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @L1_DEB_HSCX, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %338
  %348 = load %struct.BCState*, %struct.BCState** %4, align 8
  %349 = getelementptr inbounds %struct.BCState, %struct.BCState* %348, i32 0, i32 0
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* %11, align 8
  %354 = sub i64 %352, %353
  %355 = call i32 (%struct.TYPE_18__*, i8*, ...) @debugl1(%struct.TYPE_18__* %350, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %354)
  br label %356

356:                                              ; preds = %347, %338
  br label %357

357:                                              ; preds = %356, %301
  %358 = load i32, i32* @B_XMTBUFREADY, align 4
  %359 = load %struct.BCState*, %struct.BCState** %4, align 8
  %360 = getelementptr inbounds %struct.BCState, %struct.BCState* %359, i32 0, i32 5
  %361 = call i32 @test_and_set_bit(i32 %358, i32* %360)
  %362 = load %struct.BCState*, %struct.BCState** %4, align 8
  %363 = getelementptr inbounds %struct.BCState, %struct.BCState* %362, i32 0, i32 4
  %364 = call i32 @schedule_work(i32* %363)
  br label %365

365:                                              ; preds = %357, %298
  br label %366

366:                                              ; preds = %365, %178
  br label %440

367:                                              ; preds = %17
  %368 = load i32, i32* @BC_FLG_NOFRAME, align 4
  %369 = load %struct.BCState*, %struct.BCState** %4, align 8
  %370 = getelementptr inbounds %struct.BCState, %struct.BCState* %369, i32 0, i32 2
  %371 = call i64 @test_and_clear_bit(i32 %368, i32* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %406

373:                                              ; preds = %367
  %374 = load i32, i32* @BC_FLG_HALF, align 4
  %375 = load %struct.BCState*, %struct.BCState** %4, align 8
  %376 = getelementptr inbounds %struct.BCState, %struct.BCState* %375, i32 0, i32 2
  %377 = call i32 @test_and_set_bit(i32 %374, i32* %376)
  %378 = load %struct.BCState*, %struct.BCState** %4, align 8
  %379 = load i64*, i64** %5, align 8
  %380 = load i32, i32* %6, align 4
  %381 = load %struct.BCState*, %struct.BCState** %4, align 8
  %382 = getelementptr inbounds %struct.BCState, %struct.BCState* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = call i32 @fill_mem(%struct.BCState* %378, i64* %379, i32 %380, i64 %383, i32 255)
  %385 = load i32, i32* %6, align 4
  %386 = load %struct.BCState*, %struct.BCState** %4, align 8
  %387 = getelementptr inbounds %struct.BCState, %struct.BCState* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, %385
  store i32 %391, i32* %389, align 8
  %392 = load %struct.BCState*, %struct.BCState** %4, align 8
  %393 = getelementptr inbounds %struct.BCState, %struct.BCState* %392, i32 0, i32 0
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @L1_DEB_HSCX, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %373
  %401 = load %struct.BCState*, %struct.BCState** %4, align 8
  %402 = getelementptr inbounds %struct.BCState, %struct.BCState* %401, i32 0, i32 0
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %402, align 8
  %404 = call i32 (%struct.TYPE_18__*, i8*, ...) @debugl1(%struct.TYPE_18__* %403, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %405

405:                                              ; preds = %400, %373
  br label %439

406:                                              ; preds = %367
  %407 = load i32, i32* @BC_FLG_HALF, align 4
  %408 = load %struct.BCState*, %struct.BCState** %4, align 8
  %409 = getelementptr inbounds %struct.BCState, %struct.BCState* %408, i32 0, i32 2
  %410 = call i64 @test_and_clear_bit(i32 %407, i32* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %406
  %413 = load i32, i32* @BC_FLG_EMPTY, align 4
  %414 = load %struct.BCState*, %struct.BCState** %4, align 8
  %415 = getelementptr inbounds %struct.BCState, %struct.BCState* %414, i32 0, i32 2
  %416 = call i32 @test_and_set_bit(i32 %413, i32* %415)
  %417 = load %struct.BCState*, %struct.BCState** %4, align 8
  %418 = load i64*, i64** %5, align 8
  %419 = load i32, i32* %6, align 4
  %420 = load %struct.BCState*, %struct.BCState** %4, align 8
  %421 = getelementptr inbounds %struct.BCState, %struct.BCState* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = call i32 @fill_mem(%struct.BCState* %417, i64* %418, i32 %419, i64 %422, i32 255)
  %424 = load %struct.BCState*, %struct.BCState** %4, align 8
  %425 = getelementptr inbounds %struct.BCState, %struct.BCState* %424, i32 0, i32 0
  %426 = load %struct.TYPE_18__*, %struct.TYPE_18__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @L1_DEB_HSCX, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %412
  %433 = load %struct.BCState*, %struct.BCState** %4, align 8
  %434 = getelementptr inbounds %struct.BCState, %struct.BCState* %433, i32 0, i32 0
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %434, align 8
  %436 = call i32 (%struct.TYPE_18__*, i8*, ...) @debugl1(%struct.TYPE_18__* %435, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %437

437:                                              ; preds = %432, %412
  br label %438

438:                                              ; preds = %437, %406
  br label %439

439:                                              ; preds = %438, %405
  br label %440

440:                                              ; preds = %16, %439, %366
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @printframe(%struct.TYPE_18__*, i32*, i64, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_17__*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @skb_dequeue(i32*) #1

declare dso_local i32 @netjet_fill_dma(%struct.BCState*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @fill_mem(%struct.BCState*, i64*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
