; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_msgin_extend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_msgin_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_IN = common dso_local global i64 0, align 8
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TSC_XF_FIFO_IN = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@TCF_NO_SYNC_NEGO = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@TSC_SET_ATN = common dso_local global i64 0, align 8
@MSG_OUT = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@MSG_EXTEND = common dso_local global i32 0, align 4
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TCF_NO_WDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_msgin_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_msgin_extend(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %7 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %8 = call i64 @initio_msgin_accept(%struct.initio_host* %7)
  %9 = load i64, i64* @MSG_IN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %2, align 4
  br label %403

15:                                               ; preds = %1
  %16 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %17 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TUL_SCnt0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 1, i64 %20)
  %22 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %23 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %24 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TUL_SCmd, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  %29 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %30 = call i32 @wait_tulip(%struct.initio_host* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %403

33:                                               ; preds = %15
  %34 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %35 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TUL_SFifo, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @inb(i64 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %44 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  store i64 1, i64* %5, align 8
  br label %47

47:                                               ; preds = %90, %33
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %52 = call i64 @initio_msgin_accept(%struct.initio_host* %51)
  %53 = load i64, i64* @MSG_IN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %57 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %2, align 4
  br label %403

59:                                               ; preds = %50
  %60 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %61 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUL_SCnt0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 1, i64 %64)
  %66 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %67 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %68 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TUL_SCmd, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %74 = call i32 @wait_tulip(%struct.initio_host* %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %403

77:                                               ; preds = %59
  %78 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %79 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TUL_SFifo, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @inb(i64 %82)
  %84 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %85 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %5, align 8
  %89 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i64, i64* %4, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %4, align 8
  br label %47

93:                                               ; preds = %47
  %94 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %95 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %234

100:                                              ; preds = %93
  %101 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %102 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %109 = call i32 @initio_msgout_reject(%struct.initio_host* %108)
  store i32 %109, i32* %2, align 4
  br label %403

110:                                              ; preds = %100
  %111 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %112 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %121 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  store i32 0, i32* %123, align 4
  br label %144

124:                                              ; preds = %110
  %125 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %126 = call i64 @initio_msgin_sync(%struct.initio_host* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %130 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %129, i32 0, i32 3
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TCF_SYNC_DONE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %139 = call i32 @initio_sync_done(%struct.initio_host* %138)
  %140 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %141 = call i64 @initio_msgin_accept(%struct.initio_host* %140)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %2, align 4
  br label %403

143:                                              ; preds = %128, %124
  br label %144

144:                                              ; preds = %143, %119
  %145 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %146 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TUL_SSignal, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @inb(i64 %149)
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i32, i32* @TSC_SET_ACK, align 4
  %154 = or i32 %153, 7
  %155 = sext i32 %154 to i64
  %156 = and i64 %152, %155
  %157 = load i64, i64* @TSC_SET_ATN, align 8
  %158 = or i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %161 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TUL_SSignal, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i32 %159, i64 %164)
  %166 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %167 = call i64 @initio_msgin_accept(%struct.initio_host* %166)
  %168 = load i64, i64* @MSG_OUT, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %144
  %171 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %172 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %2, align 4
  br label %403

174:                                              ; preds = %144
  %175 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %176 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %177 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TUL_SCtrl0, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 %175, i64 %180)
  %182 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %183 = call i32 @initio_sync_done(%struct.initio_host* %182)
  %184 = load i32, i32* @MSG_EXTEND, align 4
  %185 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %186 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TUL_SFifo, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i32 %184, i64 %189)
  %191 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %192 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TUL_SFifo, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outb(i32 3, i64 %195)
  %197 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %198 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TUL_SFifo, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 1, i64 %201)
  %203 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %204 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %209 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @TUL_SFifo, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @outb(i32 %207, i64 %212)
  %214 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %215 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %220 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @TUL_SFifo, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @outb(i32 %218, i64 %223)
  %225 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %226 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %227 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @TUL_SCmd, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb(i32 %225, i64 %230)
  %232 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %233 = call i32 @wait_tulip(%struct.initio_host* %232)
  store i32 %233, i32* %2, align 4
  br label %403

234:                                              ; preds = %93
  %235 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %236 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 2
  br i1 %240, label %248, label %241

241:                                              ; preds = %234
  %242 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %243 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 3
  br i1 %247, label %248, label %251

248:                                              ; preds = %241, %234
  %249 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %250 = call i32 @initio_msgout_reject(%struct.initio_host* %249)
  store i32 %250, i32* %2, align 4
  br label %403

251:                                              ; preds = %241
  %252 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %253 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %252, i32 0, i32 3
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @TCF_NO_WDTR, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %251
  %261 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %262 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  store i32 0, i32* %264, align 4
  br label %335

265:                                              ; preds = %251
  %266 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %267 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %270, 2
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %274 = call i32 @initio_msgout_reject(%struct.initio_host* %273)
  store i32 %274, i32* %2, align 4
  br label %403

275:                                              ; preds = %265
  %276 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %277 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %287

282:                                              ; preds = %275
  %283 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %284 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  store i32 1, i32* %286, align 4
  br label %334

287:                                              ; preds = %275
  %288 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %289 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %288, i32 0, i32 3
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @TCF_NO_WDTR, align 4
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %333

296:                                              ; preds = %287
  %297 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %298 = call i32 @wdtr_done(%struct.initio_host* %297)
  %299 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %300 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %299, i32 0, i32 3
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @TCF_SYNC_DONE, align 4
  %305 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %306 = or i32 %304, %305
  %307 = and i32 %303, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %329

309:                                              ; preds = %296
  %310 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %311 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @TUL_SSignal, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @inb(i64 %314)
  %316 = load i32, i32* @TSC_SET_ACK, align 4
  %317 = or i32 %316, 7
  %318 = and i32 %315, %317
  %319 = sext i32 %318 to i64
  %320 = load i64, i64* @TSC_SET_ATN, align 8
  %321 = or i64 %319, %320
  %322 = trunc i64 %321 to i32
  %323 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %324 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @TUL_SSignal, align 8
  %327 = add nsw i64 %325, %326
  %328 = call i32 @outb(i32 %322, i64 %327)
  br label %329

329:                                              ; preds = %309, %296
  %330 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %331 = call i64 @initio_msgin_accept(%struct.initio_host* %330)
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %2, align 4
  br label %403

333:                                              ; preds = %287
  br label %334

334:                                              ; preds = %333, %282
  br label %335

335:                                              ; preds = %334, %260
  %336 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %337 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @TUL_SSignal, align 8
  %340 = add nsw i64 %338, %339
  %341 = call i32 @inb(i64 %340)
  %342 = load i32, i32* @TSC_SET_ACK, align 4
  %343 = or i32 %342, 7
  %344 = and i32 %341, %343
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* @TSC_SET_ATN, align 8
  %347 = or i64 %345, %346
  %348 = trunc i64 %347 to i32
  %349 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %350 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @TUL_SSignal, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @outb(i32 %348, i64 %353)
  %355 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %356 = call i64 @initio_msgin_accept(%struct.initio_host* %355)
  %357 = load i64, i64* @MSG_OUT, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %335
  %360 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %361 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* %2, align 4
  br label %403

363:                                              ; preds = %335
  %364 = load i32, i32* @MSG_EXTEND, align 4
  %365 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %366 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @TUL_SFifo, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @outb(i32 %364, i64 %369)
  %371 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %372 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @TUL_SFifo, align 8
  %375 = add nsw i64 %373, %374
  %376 = call i32 @outb(i32 2, i64 %375)
  %377 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %378 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @TUL_SFifo, align 8
  %381 = add nsw i64 %379, %380
  %382 = call i32 @outb(i32 3, i64 %381)
  %383 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %384 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 2
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %389 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @TUL_SFifo, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i32 @outb(i32 %387, i64 %392)
  %394 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %395 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %396 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @TUL_SCmd, align 8
  %399 = add nsw i64 %397, %398
  %400 = call i32 @outb(i32 %394, i64 %399)
  %401 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %402 = call i32 @wait_tulip(%struct.initio_host* %401)
  store i32 %402, i32* %2, align 4
  br label %403

403:                                              ; preds = %363, %359, %329, %272, %248, %174, %170, %137, %107, %76, %55, %32, %11
  %404 = load i32, i32* %2, align 4
  ret i32 %404
}

declare dso_local i64 @initio_msgin_accept(%struct.initio_host*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @initio_msgout_reject(%struct.initio_host*) #1

declare dso_local i64 @initio_msgin_sync(%struct.initio_host*) #1

declare dso_local i32 @initio_sync_done(%struct.initio_host*) #1

declare dso_local i32 @wdtr_done(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
