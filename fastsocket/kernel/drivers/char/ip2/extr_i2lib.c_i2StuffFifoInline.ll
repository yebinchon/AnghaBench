; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoInline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoInline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i16, i32, i32, i32 }
%struct.TYPE_14__ = type { i16, i16, i8*, i16, i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i16, i16 }
%struct.TYPE_11__ = type { i16 }

@ITRC_NO_PORT = common dso_local global i32 0, align 4
@ITRC_SICMD = common dso_local global i32 0, align 4
@ITRC_ENTER = common dso_local global i32 0, align 4
@NEED_INLINE = common dso_local global i32 0, align 4
@CHANN = common dso_local global i32 0, align 4
@PTYPE_DATA = common dso_local global i64 0, align 8
@NEED_CREDIT = common dso_local global i32 0, align 4
@OBUF_SIZE = common dso_local global i16 0, align 2
@ITRC_ERROR = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @i2StuffFifoInline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2StuffFifoInline(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i16 1, i16* %8, align 2
  store i32 1000, i32* %11, align 4
  %13 = load i32, i32* @ITRC_NO_PORT, align 4
  %14 = load i32, i32* @ITRC_SICMD, align 4
  %15 = load i32, i32* @ITRC_ENTER, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 4
  %22 = zext i16 %21 to i32
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %13, i32 %14, i32 %15, i32 3, i32 %18, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %262, %1
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = load i32, i32* @NEED_INLINE, align 4
  %38 = call %struct.TYPE_14__* @i2DeQueueNeeds(%struct.TYPE_13__* %36, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %3, align 8
  %39 = icmp ne %struct.TYPE_14__* null, %38
  br label %40

40:                                               ; preds = %35, %31, %27
  %41 = phi i1 [ false, %31 ], [ false, %27 ], [ %39, %35 ]
  br i1 %41, label %42, label %263

42:                                               ; preds = %40
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 5
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @write_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 8
  store i16 %49, i16* %5, align 2
  %50 = load i32, i32* @CHANN, align 4
  %51 = load i32, i32* @ITRC_SICMD, align 4
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %50, i32 %51, i32 3, i32 2, i32 %53, i32 %57)
  store i32 1000, i32* %12, align 4
  br label %59

59:                                               ; preds = %230, %42
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i16, i16* %5, align 2
  %65 = zext i16 %64 to i32
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp ne i32 %65, %69
  br label %71

71:                                               ; preds = %63, %59
  %72 = phi i1 [ false, %59 ], [ %70, %63 ]
  br i1 %72, label %73, label %231

73:                                               ; preds = %71
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @PTYPE_OF(i8* %80)
  %82 = load i64, i64* @PTYPE_DATA, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load i8*, i8** %4, align 8
  %86 = call zeroext i16 @DATA_COUNT_OF(i8* %85)
  store i16 %86, i16* %9, align 2
  %87 = load i16, i16* %9, align 2
  %88 = zext i16 %87 to i64
  %89 = add i64 %88, 4
  %90 = trunc i64 %89 to i16
  store i16 %90, i16* %6, align 2
  br label %98

91:                                               ; preds = %73
  %92 = load i8*, i8** %4, align 8
  %93 = call zeroext i16 @CMD_COUNT_OF(i8* %92)
  store i16 %93, i16* %9, align 2
  %94 = load i16, i16* %9, align 2
  %95 = zext i16 %94 to i64
  %96 = add i64 %95, 4
  %97 = trunc i64 %96 to i16
  store i16 %97, i16* %6, align 2
  br label %98

98:                                               ; preds = %91, %84
  %99 = load i16, i16* %9, align 2
  %100 = call zeroext i16 @CREDIT_USAGE(i16 zeroext %99)
  store i16 %100, i16* %9, align 2
  %101 = load i16, i16* %6, align 2
  %102 = call zeroext i16 @roundup(i16 zeroext %101, i32 2)
  store i16 %102, i16* %7, align 2
  %103 = load i32, i32* @CHANN, align 4
  %104 = load i32, i32* @ITRC_SICMD, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i16, i16* %7, align 2
  %109 = zext i16 %108 to i32
  %110 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %103, i32 %104, i32 4, i32 2, i32 %107, i32 %109)
  %111 = load i32, i32* @CHANN, align 4
  %112 = load i32, i32* @ITRC_SICMD, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i16, i16* %115, align 4
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* %9, align 2
  %119 = zext i16 %118 to i32
  %120 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %111, i32 %112, i32 5, i32 2, i32 %117, i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i16, i16* %123, align 4
  %125 = zext i16 %124 to i32
  %126 = load i16, i16* %9, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp sle i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %98
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = load i32, i32* @NEED_CREDIT, align 4
  %133 = call i32 @i2QueueNeeds(%struct.TYPE_13__* %130, %struct.TYPE_14__* %131, i32 %132)
  store i16 0, i16* %8, align 2
  br label %231

134:                                              ; preds = %98
  %135 = load i16, i16* %7, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = load i16, i16* %7, align 2
  %142 = call i64 @i2Write2Fifo(%struct.TYPE_13__* %139, i8* %140, i16 zeroext %141, i32 128)
  %143 = icmp eq i64 0, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  store i16 0, i16* %8, align 2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = load i32, i32* @NEED_INLINE, align 4
  %148 = call i32 @i2QueueNeeds(%struct.TYPE_13__* %145, %struct.TYPE_14__* %146, i32 %147)
  br label %231

149:                                              ; preds = %138, %134
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i16, i16* %9, align 2
  %155 = zext i16 %154 to i32
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i16, i16* %158, align 8
  %160 = zext i16 %159 to i32
  %161 = add nsw i32 %160, %155
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %158, align 8
  %163 = load i16, i16* %9, align 2
  %164 = zext i16 %163 to i32
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i16, i16* %167, align 4
  %169 = zext i16 %168 to i32
  %170 = sub nsw i32 %169, %164
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %167, align 4
  %172 = load i16, i16* %9, align 2
  %173 = zext i16 %172 to i32
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = add nsw i32 %178, %173
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %176, align 2
  %181 = load i8*, i8** %4, align 8
  %182 = call i64 @PTYPE_OF(i8* %181)
  %183 = load i64, i64* @PTYPE_DATA, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %149
  %186 = load i8*, i8** %4, align 8
  %187 = call zeroext i16 @DATA_COUNT_OF(i8* %186)
  %188 = zext i16 %187 to i32
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = load i16, i16* %190, align 8
  %192 = zext i16 %191 to i32
  %193 = sub nsw i32 %192, %188
  %194 = trunc i32 %193 to i16
  store i16 %194, i16* %190, align 8
  br label %195

195:                                              ; preds = %185, %149
  %196 = load i16, i16* %6, align 2
  %197 = zext i16 %196 to i32
  %198 = load i8*, i8** %4, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %4, align 8
  %201 = load i16, i16* %6, align 2
  %202 = zext i16 %201 to i32
  %203 = load i16, i16* %5, align 2
  %204 = zext i16 %203 to i32
  %205 = add nsw i32 %204, %202
  %206 = trunc i32 %205 to i16
  store i16 %206, i16* %5, align 2
  %207 = load i32, i32* @CHANN, align 4
  %208 = load i32, i32* @ITRC_SICMD, align 4
  %209 = load i16, i16* %5, align 2
  %210 = zext i16 %209 to i32
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i16, i16* %212, align 8
  %214 = zext i16 %213 to i32
  %215 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %207, i32 %208, i32 6, i32 2, i32 %210, i32 %214)
  %216 = load i16, i16* %5, align 2
  %217 = zext i16 %216 to i32
  %218 = load i16, i16* @OBUF_SIZE, align 2
  %219 = zext i16 %218 to i32
  %220 = icmp sge i32 %217, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %195
  store i16 0, i16* %5, align 2
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %4, align 8
  %225 = load i32, i32* @CHANN, align 4
  %226 = load i32, i32* @ITRC_SICMD, align 4
  %227 = load i16, i16* %5, align 2
  %228 = zext i16 %227 to i32
  %229 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %225, i32 %226, i32 7, i32 1, i32 %228)
  br label %230

230:                                              ; preds = %221, %195
  br label %59

231:                                              ; preds = %144, %129, %71
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @CHANN, align 4
  %236 = load i32, i32* @ITRC_ERROR, align 4
  %237 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %235, i32 %236, i32 3, i32 0)
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i16, i16* %5, align 2
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  store i16 %239, i16* %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 5
  %244 = load i64, i64* %10, align 8
  %245 = call i32 @write_unlock_irqrestore(i32* %243, i64 %244)
  %246 = load i16, i16* %8, align 2
  %247 = icmp ne i16 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %238
  %249 = load i32, i32* @CHANN, align 4
  %250 = load i32, i32* @ITRC_SICMD, align 4
  %251 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %249, i32 %250, i32 8, i32 0)
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %248
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @ip2_owake(i64 %259)
  br label %261

261:                                              ; preds = %256, %248
  br label %262

262:                                              ; preds = %261, %238
  br label %27

263:                                              ; preds = %40
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* @ITRC_NO_PORT, align 4
  %268 = load i32, i32* @ITRC_ERROR, align 4
  %269 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %267, i32 %268, i32 4, i32 0)
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i32, i32* @ITRC_NO_PORT, align 4
  %272 = load i32, i32* @ITRC_SICMD, align 4
  %273 = load i32, i32* @ITRC_RETURN, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i16, i16* %275, align 4
  %277 = zext i16 %276 to i32
  %278 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %271, i32 %272, i32 %273, i32 1, i32 %277)
  ret void
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_14__* @i2DeQueueNeeds(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @PTYPE_OF(i8*) #1

declare dso_local zeroext i16 @DATA_COUNT_OF(i8*) #1

declare dso_local zeroext i16 @CMD_COUNT_OF(i8*) #1

declare dso_local zeroext i16 @CREDIT_USAGE(i16 zeroext) #1

declare dso_local zeroext i16 @roundup(i16 zeroext, i32) #1

declare dso_local i32 @i2QueueNeeds(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @i2Write2Fifo(%struct.TYPE_13__*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ip2_owake(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
