; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci16xx.c_i_APCI16XX_InsnBitsWriteTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci16xx.c_i_APCI16XX_InsnBitsWriteTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI16XX_TTL_WRITECHANNEL_ON = common dso_local global i8 0, align 1
@APCI16XX_TTL_WRITEPORT_ON = common dso_local global i8 0, align 1
@APCI16XX_TTL_WRITECHANNEL_OFF = common dso_local global i8 0, align 1
@APCI16XX_TTL_WRITEPORT_OFF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"\0AChannel selection error\00", align 1
@ADDIDATA_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"\0AOutput memory disabled\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0ABuffer size error\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0APort selection error %lX\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0APort selection error %d %d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0ACommand selection error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI16XX_InsnBitsWriteTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call zeroext i8 @CR_RANGE(i32 %27)
  store i8 %28, i8* %12, align 1
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i8 @CR_CHAN(i32 %31)
  store i8 %32, i8* %13, align 1
  store i32 0, i32* %14, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 1
  br i1 %36, label %37, label %165

37:                                               ; preds = %4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %10, align 1
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_ON, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %37
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @APCI16XX_TTL_WRITEPORT_ON, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_OFF, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @APCI16XX_TTL_WRITEPORT_OFF, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %59, %53, %47, %37
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %155

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  %77 = sdiv i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = srem i32 %82, 4
  %84 = mul nsw i32 8, %83
  %85 = ashr i32 %80, %84
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %146

88:                                               ; preds = %71
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_ON, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_OFF, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94, %88
  %101 = load i8, i8* %13, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sgt i32 %102, 7
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -103, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %100, %94
  %107 = load i8, i8* %10, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_OFF, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i8, i8* %10, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @APCI16XX_TTL_WRITEPORT_OFF, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112, %106
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -104, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %118, %112
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @APCI16XX_TTL_WRITEPORT_ON, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i8, i8* %10, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @APCI16XX_TTL_WRITEPORT_OFF, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132, %126
  %139 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %145

145:                                              ; preds = %143, %138, %132
  br label %154

146:                                              ; preds = %71
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %152)
  store i32 -102, i32* %9, align 4
  br label %154

154:                                              ; preds = %146, %145
  br label %161

155:                                              ; preds = %65
  %156 = load i8, i8* %12, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %11, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %157, i32 %159)
  store i32 -102, i32* %9, align 4
  br label %161

161:                                              ; preds = %155, %154
  br label %164

162:                                              ; preds = %59
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 -100, i32* %9, align 4
  br label %164

164:                                              ; preds = %162, %161
  br label %167

165:                                              ; preds = %4
  %166 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = load i32, i32* %9, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %293

170:                                              ; preds = %167
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 20
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = sdiv i32 %176, 4
  %178 = mul nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %174, %179
  %181 = call i32 @inl(i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %170
  %188 = load i32, i32* %14, align 4
  %189 = zext i32 %188 to i64
  %190 = load i8, i8* %12, align 1
  %191 = zext i8 %190 to i32
  %192 = srem i32 %191, 4
  %193 = mul nsw i32 8, %192
  %194 = zext i32 %193 to i64
  %195 = shl i64 255, %194
  %196 = sub i64 4294967295, %195
  %197 = and i64 %189, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %187, %170
  %200 = load i8, i8* %10, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_ON, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %199
  %206 = load i32, i32* %14, align 4
  %207 = zext i32 %206 to i64
  %208 = load i8, i8* %12, align 1
  %209 = zext i8 %208 to i32
  %210 = srem i32 %209, 4
  %211 = mul nsw i32 8, %210
  %212 = load i8, i8* %13, align 1
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %211, %213
  %215 = zext i32 %214 to i64
  %216 = shl i64 1, %215
  %217 = or i64 %207, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %205, %199
  %220 = load i8, i8* %10, align 1
  %221 = zext i8 %220 to i32
  %222 = load i8, i8* @APCI16XX_TTL_WRITEPORT_ON, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %219
  %226 = load i32, i32* %14, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 255
  %231 = load i8, i8* %12, align 1
  %232 = zext i8 %231 to i32
  %233 = srem i32 %232, 4
  %234 = mul nsw i32 8, %233
  %235 = shl i32 %230, %234
  %236 = or i32 %226, %235
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %225, %219
  %238 = load i8, i8* %10, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8, i8* @APCI16XX_TTL_WRITECHANNEL_OFF, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load i32, i32* %14, align 4
  %245 = zext i32 %244 to i64
  %246 = load i8, i8* %12, align 1
  %247 = zext i8 %246 to i32
  %248 = srem i32 %247, 4
  %249 = mul nsw i32 8, %248
  %250 = load i8, i8* %13, align 1
  %251 = zext i8 %250 to i32
  %252 = add nsw i32 %249, %251
  %253 = zext i32 %252 to i64
  %254 = shl i64 1, %253
  %255 = sub i64 4294967295, %254
  %256 = and i64 %245, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %243, %237
  %259 = load i8, i8* %10, align 1
  %260 = zext i8 %259 to i32
  %261 = load i8, i8* @APCI16XX_TTL_WRITEPORT_OFF, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %264, label %280

264:                                              ; preds = %258
  %265 = load i32, i32* %14, align 4
  %266 = zext i32 %265 to i64
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 255
  %271 = load i8, i8* %12, align 1
  %272 = zext i8 %271 to i32
  %273 = srem i32 %272, 4
  %274 = mul nsw i32 8, %273
  %275 = shl i32 %270, %274
  %276 = zext i32 %275 to i64
  %277 = sub i64 4294967295, %276
  %278 = and i64 %266, %277
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %264, %258
  %281 = load i32, i32* %14, align 4
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 20
  %286 = load i8, i8* %12, align 1
  %287 = zext i8 %286 to i32
  %288 = sdiv i32 %287, 4
  %289 = mul nsw i32 %288, 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %285, %290
  %292 = call i32 @outl(i32 %281, i64 %291)
  br label %293

293:                                              ; preds = %280, %167
  %294 = load i32, i32* %9, align 4
  ret i32 %294
}

declare dso_local zeroext i8 @CR_RANGE(i32) #1

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
