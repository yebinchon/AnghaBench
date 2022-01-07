; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_ioctl.c_GetStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_ioctl.c_GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64*, i64*, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i64*, i64* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__, %struct.TYPE_19__, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__, i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64* }

@sc_adapter = common dso_local global %struct.TYPE_15__** null, align 8
@CEPID = common dso_local global i32 0, align 4
@ceReqTypePhy = common dso_local global i32 0, align 4
@ceReqClass2 = common dso_local global i32 0, align 4
@ceReqPhyStatus = common dso_local global i32 0, align 4
@SAR_TIMEOUT = common dso_local global i32 0, align 4
@PRI_BOARD = common dso_local global i64 0, align 8
@BRI_CHANNELS = common dso_local global i32 0, align 4
@PRI_CHANNELS = common dso_local global i32 0, align 4
@ceReqTypeCall = common dso_local global i32 0, align 4
@ceReqClass0 = common dso_local global i32 0, align 4
@ceReqCallGetCallType = common dso_local global i32 0, align 4
@ceReqTypeStat = common dso_local global i32 0, align 4
@ceReqPhyChCallState = common dso_local global i32 0, align 4
@ceReqPhyChServState = common dso_local global i32 0, align 4
@ceReqTypeLnk = common dso_local global i32 0, align 4
@ceReqLnkGetStats = common dso_local global i32 0, align 4
@ceReqCallGetSPID = common dso_local global i32 0, align 4
@ceReqCallGetMyNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_24__*)* @GetStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetStatus(i32 %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %9, i64 %11
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %21, i64 %23
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @strcpy(i32 %20, i64* %28)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %33, i64 %35
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @strcpy(i32 %32, i64* %40)
  %42 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %42, i64 %44
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %51, i64 %53
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %60, i64 %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %69, i64 %71
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %79, i64 %81
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %92, i64 %94
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = call i32 @strcpy(i32 %91, i64* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %103, i64 %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @strcpy(i32 %102, i64* %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @CEPID, align 4
  %113 = load i32, i32* @ceReqTypePhy, align 4
  %114 = load i32, i32* @ceReqClass2, align 4
  %115 = load i32, i32* @ceReqPhyStatus, align 4
  %116 = load i32, i32* @SAR_TIMEOUT, align 4
  %117 = call i32 @send_and_receive(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %203, label %120

120:                                              ; preds = %2
  %121 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %121, i64 %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PRI_BOARD, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %158, %130
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @BRI_CHANNELS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 4
  store i64 %149, i64* %157, align 8
  br label %158

158:                                              ; preds = %142
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %138

161:                                              ; preds = %138
  br label %202

162:                                              ; preds = %120
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %198, %162
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @PRI_CHANNELS, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 4
  store i64 %189, i64* %197, align 8
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %177

201:                                              ; preds = %177
  br label %202

202:                                              ; preds = %201, %161
  br label %203

203:                                              ; preds = %202, %2
  store i32 0, i32* %7, align 4
  br label %204

204:                                              ; preds = %264, %203
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %206, i64 %208
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %205, %212
  br i1 %213, label %214, label %267

214:                                              ; preds = %204
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @CEPID, align 4
  %217 = load i32, i32* @ceReqTypeCall, align 4
  %218 = load i32, i32* @ceReqClass0, align 4
  %219 = load i32, i32* @ceReqCallGetCallType, align 4
  %220 = load i32, i32* @SAR_TIMEOUT, align 4
  %221 = call i32 @send_and_receive(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %263, label %224

224:                                              ; preds = %214
  %225 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %225, i64 %227
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @PRI_BOARD, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %224
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 3
  store i64 %239, i64* %247, align 8
  br label %262

248:                                              ; preds = %224
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 3
  store i64 %253, i64* %261, align 8
  br label %262

262:                                              ; preds = %248, %234
  br label %263

263:                                              ; preds = %262, %214
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %204

267:                                              ; preds = %204
  %268 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sc_adapter, align 8
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %268, i64 %270
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @PRI_BOARD, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %472

277:                                              ; preds = %267
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @CEPID, align 4
  %280 = load i32, i32* @ceReqTypeStat, align 4
  %281 = load i32, i32* @ceReqClass2, align 4
  %282 = load i32, i32* @ceReqPhyChCallState, align 4
  %283 = load i32, i32* @SAR_TIMEOUT, align 4
  %284 = call i32 @send_and_receive(i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %283)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %312, label %287

287:                                              ; preds = %277
  store i32 0, i32* %7, align 4
  br label %288

288:                                              ; preds = %308, %287
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @PRI_CHANNELS, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 2
  store i64 %299, i64* %307, align 8
  br label %308

308:                                              ; preds = %292
  %309 = load i32, i32* %7, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %7, align 4
  br label %288

311:                                              ; preds = %288
  br label %312

312:                                              ; preds = %311, %277
  %313 = load i32, i32* %4, align 4
  %314 = load i32, i32* @CEPID, align 4
  %315 = load i32, i32* @ceReqTypeStat, align 4
  %316 = load i32, i32* @ceReqClass2, align 4
  %317 = load i32, i32* @ceReqPhyChServState, align 4
  %318 = load i32, i32* @SAR_TIMEOUT, align 4
  %319 = call i32 @send_and_receive(i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %318)
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %347, label %322

322:                                              ; preds = %312
  store i32 0, i32* %7, align 4
  br label %323

323:                                              ; preds = %343, %322
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* @PRI_CHANNELS, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %346

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 0
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 1
  store i64 %334, i64* %342, align 8
  br label %343

343:                                              ; preds = %327
  %344 = load i32, i32* %7, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %7, align 4
  br label %323

346:                                              ; preds = %323
  br label %347

347:                                              ; preds = %346, %312
  store i32 1, i32* %7, align 4
  br label %348

348:                                              ; preds = %425, %347
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* @PRI_CHANNELS, align 4
  %351 = icmp sle i32 %349, %350
  br i1 %351, label %352, label %428

352:                                              ; preds = %348
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* @CEPID, align 4
  %355 = load i32, i32* @ceReqTypeLnk, align 4
  %356 = load i32, i32* @ceReqClass0, align 4
  %357 = load i32, i32* @ceReqLnkGetStats, align 4
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* @SAR_TIMEOUT, align 4
  %360 = call i32 @send_and_receive(i32 %353, i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %359)
  store i32 %360, i32* %8, align 4
  %361 = load i32, i32* %8, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %424, label %363

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 0
  %366 = load i64*, i64** %365, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = sub nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 0
  store i64 %368, i64* %378, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = load i64*, i64** %380, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 4
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sub nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 1
  store i64 %383, i64* %393, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 0
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 8
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sub nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 2
  store i64 %398, i64* %408, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 0
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 12
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 3
  store i64 %413, i64* %423, align 8
  br label %424

424:                                              ; preds = %363, %352
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %7, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %7, align 4
  br label %348

428:                                              ; preds = %348
  %429 = load i32, i32* %4, align 4
  %430 = load i32, i32* @CEPID, align 4
  %431 = load i32, i32* @ceReqTypeLnk, align 4
  %432 = load i32, i32* @ceReqClass0, align 4
  %433 = load i32, i32* @ceReqLnkGetStats, align 4
  %434 = load i32, i32* @SAR_TIMEOUT, align 4
  %435 = call i32 @send_and_receive(i32 %429, i32 %430, i32 %431, i32 %432, i32 %433, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %434)
  store i32 %435, i32* %8, align 4
  %436 = load i32, i32* %8, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %471, label %438

438:                                              ; preds = %428
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 0
  %441 = load i64*, i64** %440, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 0
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 0
  store i64 %443, i64* %446, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 0
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 4
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 1
  store i64 %451, i64* %454, align 8
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 0
  %457 = load i64*, i64** %456, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 8
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %461, i32 0, i32 2
  store i64 %459, i64* %462, align 8
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 0
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 12
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 3
  store i64 %467, i64* %470, align 8
  br label %471

471:                                              ; preds = %438, %428
  store i32 0, i32* %3, align 4
  br label %682

472:                                              ; preds = %267
  %473 = load i32, i32* %4, align 4
  %474 = load i32, i32* @CEPID, align 4
  %475 = load i32, i32* @ceReqTypeLnk, align 4
  %476 = load i32, i32* @ceReqClass0, align 4
  %477 = load i32, i32* @ceReqLnkGetStats, align 4
  %478 = load i32, i32* @SAR_TIMEOUT, align 4
  %479 = call i32 @send_and_receive(i32 %473, i32 %474, i32 %475, i32 %476, i32 %477, i32 0, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %478)
  store i32 %479, i32* %8, align 4
  %480 = load i32, i32* %8, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %611, label %482

482:                                              ; preds = %472
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 0
  %485 = load i64*, i64** %484, align 8
  %486 = getelementptr inbounds i64, i64* %485, i64 0
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 2
  %490 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %489, i32 0, i32 0
  store i64 %487, i64* %490, align 8
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i32 0, i32 0
  %493 = load i64*, i64** %492, align 8
  %494 = getelementptr inbounds i64, i64* %493, i64 4
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 1
  store i64 %495, i64* %498, align 8
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %499, i32 0, i32 0
  %501 = load i64*, i64** %500, align 8
  %502 = getelementptr inbounds i64, i64* %501, i64 8
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %505, i32 0, i32 2
  store i64 %503, i64* %506, align 8
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 0
  %509 = load i64*, i64** %508, align 8
  %510 = getelementptr inbounds i64, i64* %509, i64 12
  %511 = load i64, i64* %510, align 8
  %512 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 3
  store i64 %511, i64* %514, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %515, i32 0, i32 0
  %517 = load i64*, i64** %516, align 8
  %518 = getelementptr inbounds i64, i64* %517, i64 16
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_21__*, %struct.TYPE_21__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %523, i64 0
  %525 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %525, i32 0, i32 0
  store i64 %519, i64* %526, align 8
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 0
  %529 = load i64*, i64** %528, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 20
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 0
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i64 0
  %537 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %537, i32 0, i32 1
  store i64 %531, i64* %538, align 8
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %539, i32 0, i32 0
  %541 = load i64*, i64** %540, align 8
  %542 = getelementptr inbounds i64, i64* %541, i64 24
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 0
  %547 = load %struct.TYPE_21__*, %struct.TYPE_21__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %547, i64 0
  %549 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %549, i32 0, i32 2
  store i64 %543, i64* %550, align 8
  %551 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 0
  %553 = load i64*, i64** %552, align 8
  %554 = getelementptr inbounds i64, i64* %553, i64 28
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 0
  %559 = load %struct.TYPE_21__*, %struct.TYPE_21__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %559, i64 0
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %561, i32 0, i32 3
  store i64 %555, i64* %562, align 8
  %563 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %563, i32 0, i32 0
  %565 = load i64*, i64** %564, align 8
  %566 = getelementptr inbounds i64, i64* %565, i64 32
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %569, i32 0, i32 0
  %571 = load %struct.TYPE_21__*, %struct.TYPE_21__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %571, i64 1
  %573 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %572, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %573, i32 0, i32 0
  store i64 %567, i64* %574, align 8
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %575, i32 0, i32 0
  %577 = load i64*, i64** %576, align 8
  %578 = getelementptr inbounds i64, i64* %577, i64 36
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %581 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 0
  %583 = load %struct.TYPE_21__*, %struct.TYPE_21__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %583, i64 1
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %585, i32 0, i32 1
  store i64 %579, i64* %586, align 8
  %587 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %587, i32 0, i32 0
  %589 = load i64*, i64** %588, align 8
  %590 = getelementptr inbounds i64, i64* %589, i64 40
  %591 = load i64, i64* %590, align 8
  %592 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %593, i32 0, i32 0
  %595 = load %struct.TYPE_21__*, %struct.TYPE_21__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %595, i64 1
  %597 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 2
  store i64 %591, i64* %598, align 8
  %599 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %599, i32 0, i32 0
  %601 = load i64*, i64** %600, align 8
  %602 = getelementptr inbounds i64, i64* %601, i64 44
  %603 = load i64, i64* %602, align 8
  %604 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %605 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %605, i32 0, i32 0
  %607 = load %struct.TYPE_21__*, %struct.TYPE_21__** %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %607, i64 1
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %608, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %609, i32 0, i32 3
  store i64 %603, i64* %610, align 8
  br label %611

611:                                              ; preds = %482, %472
  store i32 0, i32* %7, align 4
  br label %612

612:                                              ; preds = %643, %611
  %613 = load i32, i32* %7, align 4
  %614 = load i32, i32* @BRI_CHANNELS, align 4
  %615 = icmp slt i32 %613, %614
  br i1 %615, label %616, label %646

616:                                              ; preds = %612
  %617 = load i32, i32* %4, align 4
  %618 = load i32, i32* @CEPID, align 4
  %619 = load i32, i32* @ceReqTypeCall, align 4
  %620 = load i32, i32* @ceReqClass0, align 4
  %621 = load i32, i32* @ceReqCallGetSPID, align 4
  %622 = load i32, i32* %7, align 4
  %623 = add nsw i32 %622, 1
  %624 = load i32, i32* @SAR_TIMEOUT, align 4
  %625 = call i32 @send_and_receive(i32 %617, i32 %618, i32 %619, i32 %620, i32 %621, i32 %623, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %624)
  store i32 %625, i32* %8, align 4
  %626 = load i32, i32* %8, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %642, label %628

628:                                              ; preds = %616
  %629 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %630 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %630, i32 0, i32 0
  %632 = load %struct.TYPE_21__*, %struct.TYPE_21__** %631, align 8
  %633 = load i32, i32* %7, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %638, i32 0, i32 0
  %640 = load i64*, i64** %639, align 8
  %641 = call i32 @strcpy(i32 %637, i64* %640)
  br label %642

642:                                              ; preds = %628, %616
  br label %643

643:                                              ; preds = %642
  %644 = load i32, i32* %7, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %7, align 4
  br label %612

646:                                              ; preds = %612
  store i32 0, i32* %7, align 4
  br label %647

647:                                              ; preds = %678, %646
  %648 = load i32, i32* %7, align 4
  %649 = load i32, i32* @BRI_CHANNELS, align 4
  %650 = icmp slt i32 %648, %649
  br i1 %650, label %651, label %681

651:                                              ; preds = %647
  %652 = load i32, i32* %4, align 4
  %653 = load i32, i32* @CEPID, align 4
  %654 = load i32, i32* @ceReqTypeCall, align 4
  %655 = load i32, i32* @ceReqClass0, align 4
  %656 = load i32, i32* @ceReqCallGetMyNumber, align 4
  %657 = load i32, i32* %7, align 4
  %658 = add nsw i32 %657, 1
  %659 = load i32, i32* @SAR_TIMEOUT, align 4
  %660 = call i32 @send_and_receive(i32 %652, i32 %653, i32 %654, i32 %655, i32 %656, i32 %658, i32 0, i32* null, %struct.TYPE_14__* %6, i32 %659)
  store i32 %660, i32* %8, align 4
  %661 = load i32, i32* %8, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %677, label %663

663:                                              ; preds = %651
  %664 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %665, i32 0, i32 0
  %667 = load %struct.TYPE_21__*, %struct.TYPE_21__** %666, align 8
  %668 = load i32, i32* %7, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %667, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %673, i32 0, i32 0
  %675 = load i64*, i64** %674, align 8
  %676 = call i32 @strcpy(i32 %672, i64* %675)
  br label %677

677:                                              ; preds = %663, %651
  br label %678

678:                                              ; preds = %677
  %679 = load i32, i32* %7, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %7, align 4
  br label %647

681:                                              ; preds = %647
  store i32 0, i32* %3, align 4
  br label %682

682:                                              ; preds = %681, %471
  %683 = load i32, i32* %3, align 4
  ret i32 %683
}

declare dso_local i32 @strcpy(i32, i64*) #1

declare dso_local i32 @send_and_receive(i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
