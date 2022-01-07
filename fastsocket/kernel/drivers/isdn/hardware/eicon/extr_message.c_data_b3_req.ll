; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_data_b3_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_data_b3_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_11__*, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_15__ = type { i64, i32*, i32, i8*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"data_b3_req\00", align 1
@_WRONG_IDENTIFIER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ncci=0x%x, plci=0x%x\00", align 1
@_WRONG_STATE = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@INC_ACT_PENDING = common dso_local global i64 0, align 8
@MAX_DATA_B3 = common dso_local global i64 0, align 8
@MAX_DATA_ACK = common dso_local global i64 0, align 8
@_DATA_B3_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ww\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_14__*, %struct.TYPE_12__*, i32*, %struct.TYPE_16__*)* @data_b3_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_b3_req(i32 %0, i64 %1, %struct.TYPE_14__* %2, %struct.TYPE_12__* %3, i32* %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %13, align 8
  %19 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @dbug(i32 1, i32 %19)
  %21 = load i64, i64* @_WRONG_IDENTIFIER, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 16
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %17, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %25, %struct.TYPE_12__* %26)
  %28 = call i32 @dbug(i32 1, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %200

31:                                               ; preds = %6
  %32 = load i64, i64* %17, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %200

34:                                               ; preds = %31
  %35 = load i64, i64* @_WRONG_STATE, align 8
  store i64 %35, i64* %16, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CONNECTED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %17, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INC_ACT_PENDING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %199

53:                                               ; preds = %44, %34
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %57
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %14, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* @MAX_DATA_B3, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load i64, i64* @MAX_DATA_B3, align 8
  %71 = load i64, i64* %18, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %18, align 8
  br label %73

73:                                               ; preds = %69, %53
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %77
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %15, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = icmp uge i32* %86, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %73
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  %103 = icmp ult i32* %97, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %92
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  br label %126

115:                                              ; preds = %92, %73
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = call i32* @TransmitBufferSet(i32* %116, i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %115, %104
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @GET_WORD(i64 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 2
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @GET_WORD(i64 %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 3
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @GET_WORD(i64 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %126
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %161, %164
  store i64 %165, i64* %18, align 8
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* @MAX_DATA_ACK, align 8
  %168 = icmp uge i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %158
  %170 = load i64, i64* @MAX_DATA_ACK, align 8
  %171 = load i64, i64* %18, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %18, align 8
  br label %173

173:                                              ; preds = %169, %158
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = load i64, i64* %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i64 %176, i64* %182, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i64, i64* %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  store i8* %185, i8** %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %193, align 8
  br label %196

196:                                              ; preds = %173, %126
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %198 = call i32 @send_data(%struct.TYPE_12__* %197)
  store i32 0, i32* %7, align 4
  br label %256

199:                                              ; preds = %44
  br label %200

200:                                              ; preds = %199, %31, %6
  %201 = load i32*, i32** %12, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %255

203:                                              ; preds = %200
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %205 = icmp ne %struct.TYPE_12__* %204, null
  br i1 %205, label %206, label %241

206:                                              ; preds = %203
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i32*
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i32*
  %216 = icmp uge i32* %211, %215
  br i1 %216, label %217, label %240

217:                                              ; preds = %206
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i32*
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  %227 = getelementptr inbounds i32, i32* %226, i64 8
  %228 = icmp ult i32* %222, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %217
  %230 = load i32*, i32** %12, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i32*
  %239 = call i32 @TransmitBufferFree(i32* %230, i32* %238)
  br label %240

240:                                              ; preds = %229, %217, %206
  br label %241

241:                                              ; preds = %240, %203
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* @_DATA_B3_R, align 4
  %244 = load i32, i32* @CONFIRM, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* %8, align 4
  %247 = load i64, i64* %9, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i64 2
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @GET_WORD(i64 %251)
  %253 = load i64, i64* %16, align 8
  %254 = call i32 @sendf(i32* %242, i32 %245, i32 %246, i64 %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %252, i64 %253)
  br label %255

255:                                              ; preds = %241, %200
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %255, %196
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32* @TransmitBufferSet(i32*, i32) #1

declare dso_local i8* @GET_WORD(i64) #1

declare dso_local i32 @send_data(%struct.TYPE_12__*) #1

declare dso_local i32 @TransmitBufferFree(i32*, i32*) #1

declare dso_local i32 @sendf(i32*, i32, i32, i64, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
