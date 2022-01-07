; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_do_irq_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_do_irq_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64 }

@SAA7146_PSR_PIN1 = common dso_local global i32 0, align 4
@SAA7146_IER = common dso_local global i32 0, align 4
@VID_PLAY_NORMAL = common dso_local global i64 0, align 8
@debNormal = common dso_local global i32 0, align 4
@IBM_MP2_AUD_FIFO = common dso_local global i32 0, align 4
@debAudio = common dso_local global i32 0, align 4
@NewCard = common dso_local global i64 0, align 8
@IBM_MP2_AUD_FIFOW = common dso_local global i32 0, align 4
@IBM_MP2_FIFO = common dso_local global i32 0, align 4
@debVideo = common dso_local global i32 0, align 4
@IBM_MP2_FIFOW = common dso_local global i32 0, align 4
@SAA7146_PSR_DEBI_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @do_irq_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_irq_send_data(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  %6 = load i32, i32* @SAA7146_PSR_PIN1, align 4
  %7 = load i32, i32* @SAA7146_IER, align 4
  %8 = call i32 @saawrite(i32 %6, i32 %7)
  %9 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %10 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VID_PLAY_NORMAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %16 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %18 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %21 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %24 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %29 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %32 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %19
  %36 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %37 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %40 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %38, %41
  %43 = sub nsw i32 65536, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %46 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %49 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %54 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %57 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %5, align 4
  br label %69

60:                                               ; preds = %44
  %61 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %62 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %65 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = sub nsw i32 524288, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %60, %52
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %77 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %80 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @SAA7146_IER, align 4
  %85 = call i32 @saawrite(i32 0, i32 %84)
  br label %272

86:                                               ; preds = %75, %72, %69
  %87 = load i32, i32* %4, align 4
  %88 = icmp sge i32 %87, 2048
  br i1 %88, label %89, label %176

89:                                               ; preds = %86
  %90 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %91 = load i32, i32* @debNormal, align 4
  %92 = load i32, i32* @IBM_MP2_AUD_FIFO, align 4
  %93 = call i32 @debiread(%struct.saa7146* %90, i32 %91, i32 %92, i32 2)
  %94 = and i32 %93, 255
  %95 = icmp slt i32 %94, 60
  br i1 %95, label %96, label %176

96:                                               ; preds = %89
  %97 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %98 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %101 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %106 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 65536, %107
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %104
  store i32 2048, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = icmp slt i32 %114, 2048
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %118 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %121 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %124 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %122, %126
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @memcpy(i64 %119, i64 %127, i32 %128)
  %130 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %131 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %4, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %113, %110
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %138 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %144 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %147 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %145, %149
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @memcpy(i64 %142, i64 %150, i32 %151)
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %155 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %159 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 65535
  store i32 %161, i32* %159, align 4
  %162 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %163 = load i32, i32* @debAudio, align 4
  %164 = load i64, i64* @NewCard, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %136
  %167 = load i32, i32* @IBM_MP2_AUD_FIFO, align 4
  br label %170

168:                                              ; preds = %136
  %169 = load i32, i32* @IBM_MP2_AUD_FIFOW, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = call i32 @debiwrite(%struct.saa7146* %162, i32 %163, i32 %171, i32 0, i32 2048)
  %173 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %174 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %173, i32 0, i32 10
  %175 = call i32 @wake_up_interruptible(i32* %174)
  br label %266

176:                                              ; preds = %89, %86
  %177 = load i32, i32* %5, align 4
  %178 = icmp sge i32 %177, 30720
  br i1 %178, label %179, label %265

179:                                              ; preds = %176
  %180 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %181 = load i32, i32* @debNormal, align 4
  %182 = load i32, i32* @IBM_MP2_FIFO, align 4
  %183 = call i32 @debiread(%struct.saa7146* %180, i32 %181, i32 %182, i32 2)
  %184 = icmp slt i32 %183, 16384
  br i1 %184, label %185, label %265

185:                                              ; preds = %179
  %186 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %187 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %190 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %188, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %195 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 524288, %196
  store i32 %197, i32* %3, align 4
  br label %199

198:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %193
  store i32 30720, i32* %5, align 4
  %200 = load i32, i32* %3, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %224

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = icmp slt i32 %203, 30720
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %207 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %210 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %209, i32 0, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %213 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %211, %215
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @memcpy(i64 %208, i64 %216, i32 %217)
  %219 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %220 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %219, i32 0, i32 3
  store i32 0, i32* %220, align 8
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* %5, align 4
  %223 = sub nsw i32 %222, %221
  store i32 %223, i32* %5, align 4
  br label %225

224:                                              ; preds = %202, %199
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %224, %205
  %226 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %227 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %228, %230
  %232 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %233 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %236 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %234, %238
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @memcpy(i64 %231, i64 %239, i32 %240)
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %244 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %248 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 524287
  store i32 %250, i32* %248, align 8
  %251 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %252 = load i32, i32* @debVideo, align 4
  %253 = load i64, i64* @NewCard, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %225
  %256 = load i32, i32* @IBM_MP2_FIFO, align 4
  br label %259

257:                                              ; preds = %225
  %258 = load i32, i32* @IBM_MP2_FIFOW, align 4
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  %261 = call i32 @debiwrite(%struct.saa7146* %251, i32 %252, i32 %260, i32 0, i32 30720)
  %262 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %263 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %262, i32 0, i32 7
  %264 = call i32 @wake_up_interruptible(i32* %263)
  br label %265

265:                                              ; preds = %259, %179, %176
  br label %266

266:                                              ; preds = %265, %170
  %267 = load i32, i32* @SAA7146_PSR_DEBI_S, align 4
  %268 = load i32, i32* @SAA7146_PSR_PIN1, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @SAA7146_IER, align 4
  %271 = call i32 @saawrite(i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %266, %83
  ret void
}

declare dso_local i32 @saawrite(i32, i32) #1

declare dso_local i32 @debiread(%struct.saa7146*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @debiwrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
