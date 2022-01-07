; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_v_APCI3200_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_v_APCI3200_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.comedi_device = type { i64 }

@s_BoardInfos = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_APCI3200_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %617 [
    i32 0, label %24
    i32 1, label %24
    i32 2, label %614
    i32 3, label %614
  ]

24:                                               ; preds = %2, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %613 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %224
  ]

32:                                               ; preds = %24, %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %35, %42
  %44 = add nsw i64 %43, 16
  %45 = trunc i64 %44 to i32
  %46 = call i32 @inl(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %223

50:                                               ; preds = %32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 11
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %53, %60
  %62 = add nsw i64 %61, 12
  %63 = trunc i64 %62 to i32
  %64 = call i32 @inl(i32 %63)
  %65 = and i32 %64, 393216
  %66 = ashr i32 %65, 17
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %69, %76
  %78 = add nsw i64 %77, 28
  %79 = trunc i64 %78 to i32
  %80 = call i32 @inl(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %50
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %93 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 0
  %100 = getelementptr inbounds i32, i32* %91, i64 %99
  store i32 %84, i32* %100, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %102 = call i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %101, i32* %10)
  br label %103

103:                                              ; preds = %83, %50
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %109 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %116 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  %123 = getelementptr inbounds i32, i32* %114, i64 %122
  store i32 %107, i32* %123, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %125 = call i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %124, i32* %10)
  br label %126

126:                                              ; preds = %106, %103
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %222

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %139 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 2
  %146 = getelementptr inbounds i32, i32* %137, i64 %145
  store i32 %130, i32* %146, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %176

155:                                              ; preds = %129
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %157 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 6
  store i32 0, i32* %161, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %163 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %164 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 9
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %171 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %172 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  store i64 %169, i64* %175, align 8
  br label %183

176:                                              ; preds = %129
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %178 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %179 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %176, %155
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %185 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 1
  br i1 %191, label %192, label %198

192:                                              ; preds = %183
  %193 = load i32, i32* @SIGIO, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @send_sig(i32 %193, i32 %196, i32 0)
  store i32 %197, i32* %14, align 4
  br label %221

198:                                              ; preds = %183
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %200 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %207 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %208 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %205, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %198
  %215 = load i32, i32* @SIGIO, align 4
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @send_sig(i32 %215, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %214, %198
  br label %221

221:                                              ; preds = %220, %192
  br label %222

222:                                              ; preds = %221, %126
  br label %223

223:                                              ; preds = %222, %32
  br label %613

224:                                              ; preds = %24
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %229 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %230 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 11
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %227, %234
  %236 = add nsw i64 %235, 16
  %237 = trunc i64 %236 to i32
  %238 = call i32 @inl(i32 %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = and i32 %239, 2
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %612

242:                                              ; preds = %224
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %247 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %248 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 11
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %245, %252
  %254 = add nsw i64 %253, 4
  %255 = trunc i64 %254 to i32
  %256 = call i32 @inl(i32 %255)
  %257 = and i32 %256, 1024
  %258 = ashr i32 %257, 10
  store i32 %258, i32* %9, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %263 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %264 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 11
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %261, %268
  %270 = add nsw i64 %269, 12
  %271 = trunc i64 %270 to i32
  %272 = call i32 @inl(i32 %271)
  %273 = and i32 %272, 393216
  %274 = ashr i32 %273, 17
  store i32 %274, i32* %8, align 4
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %279 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %280 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %277, %284
  %286 = add nsw i64 %285, 24
  %287 = trunc i64 %286 to i32
  %288 = call i32 @inl(i32 %287)
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %291 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %292 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 3
  store i32 %289, i32* %295, align 8
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %300 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %301 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 11
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %298, %305
  %307 = add nsw i64 %306, 28
  %308 = trunc i64 %307 to i32
  %309 = call i32 @inl(i32 %308)
  store i32 %309, i32* %11, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %335

312:                                              ; preds = %242
  %313 = load i32, i32* %9, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %335

315:                                              ; preds = %312
  %316 = load i32, i32* %11, align 4
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %318 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %319 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %325 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %326 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, 0
  %332 = getelementptr inbounds i32, i32* %323, i64 %331
  store i32 %316, i32* %332, align 4
  %333 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %334 = call i32 @i_APCI3200_ReadCJCValue(%struct.comedi_device* %333, i32* %10)
  br label %335

335:                                              ; preds = %315, %312, %242
  %336 = load i32, i32* %9, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %361

338:                                              ; preds = %335
  %339 = load i32, i32* %8, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %361

341:                                              ; preds = %338
  %342 = load i32, i32* %11, align 4
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %344 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %345 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %351 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %352 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, 3
  %358 = getelementptr inbounds i32, i32* %349, i64 %357
  store i32 %342, i32* %358, align 4
  %359 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %360 = call i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %359, i32* %10)
  br label %361

361:                                              ; preds = %341, %338, %335
  %362 = load i32, i32* %8, align 4
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %387

364:                                              ; preds = %361
  %365 = load i32, i32* %9, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %387

367:                                              ; preds = %364
  %368 = load i32, i32* %11, align 4
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %370 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %371 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %377 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %378 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = add i64 %382, 1
  %384 = getelementptr inbounds i32, i32* %375, i64 %383
  store i32 %368, i32* %384, align 4
  %385 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %386 = call i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %385, i32* %10)
  br label %387

387:                                              ; preds = %367, %364, %361
  %388 = load i32, i32* %8, align 4
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %390, label %486

390:                                              ; preds = %387
  %391 = load i32, i32* %9, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %486

393:                                              ; preds = %390
  %394 = load i32, i32* %11, align 4
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %396 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %397 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %403 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %404 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = add i64 %408, 2
  %410 = getelementptr inbounds i32, i32* %401, i64 %409
  store i32 %394, i32* %410, align 4
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %412 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %413 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %419 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %420 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 9
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %417, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %393
  store i32 1, i32* %13, align 4
  br label %446

427:                                              ; preds = %393
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %429 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %430 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 8
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %436 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %437 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 8
  %442 = icmp eq i32 %434, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %427
  store i32 0, i32* %13, align 4
  br label %445

444:                                              ; preds = %427
  store i32 1, i32* %13, align 4
  br label %445

445:                                              ; preds = %444, %443
  br label %446

446:                                              ; preds = %445, %426
  %447 = load i32, i32* %13, align 4
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %451 = call i32 @i_APCI3200_ReadCJCCalOffset(%struct.comedi_device* %450, i32* %10)
  br label %485

452:                                              ; preds = %446
  %453 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %454 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %455 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %461 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %462 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = add i64 %466, 4
  %468 = getelementptr inbounds i32, i32* %459, i64 %467
  store i32 0, i32* %468, align 4
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %470 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %471 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %477 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %478 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = add i64 %482, 5
  %484 = getelementptr inbounds i32, i32* %475, i64 %483
  store i32 0, i32* %484, align 4
  br label %485

485:                                              ; preds = %452, %449
  br label %486

486:                                              ; preds = %485, %390, %387
  %487 = load i32, i32* %8, align 4
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %512

489:                                              ; preds = %486
  %490 = load i32, i32* %9, align 4
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %512

492:                                              ; preds = %489
  %493 = load i32, i32* %11, align 4
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %495 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %496 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 1
  %500 = load i32*, i32** %499, align 8
  %501 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %502 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %503 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = add i64 %507, 4
  %509 = getelementptr inbounds i32, i32* %500, i64 %508
  store i32 %493, i32* %509, align 4
  %510 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %511 = call i32 @i_APCI3200_ReadCJCCalGain(%struct.comedi_device* %510, i32* %10)
  br label %512

512:                                              ; preds = %492, %489, %486
  %513 = load i32, i32* %8, align 4
  %514 = icmp eq i32 %513, 2
  br i1 %514, label %515, label %611

515:                                              ; preds = %512
  %516 = load i32, i32* %9, align 4
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %518, label %611

518:                                              ; preds = %515
  %519 = load i32, i32* %11, align 4
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %521 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %522 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %528 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %529 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %527, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %531, i32 0, i32 2
  %533 = load i64, i64* %532, align 8
  %534 = add i64 %533, 5
  %535 = getelementptr inbounds i32, i32* %526, i64 %534
  store i32 %519, i32* %535, align 4
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %537 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %538 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = icmp eq i32 %542, 1
  br i1 %543, label %544, label %565

544:                                              ; preds = %518
  %545 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %546 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %547 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %545, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %549, i32 0, i32 6
  store i32 0, i32* %550, align 4
  %551 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %552 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %553 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %551, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i32 0, i32 2
  %557 = load i64, i64* %556, align 8
  %558 = add i64 %557, 9
  %559 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %560 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %561 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %559, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i32 0, i32 2
  store i64 %558, i64* %564, align 8
  br label %572

565:                                              ; preds = %518
  %566 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %567 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %568 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %566, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %570, i32 0, i32 2
  store i64 0, i64* %571, align 8
  br label %572

572:                                              ; preds = %565, %544
  %573 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %574 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %575 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %573, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 1
  br i1 %580, label %581, label %587

581:                                              ; preds = %572
  %582 = load i32, i32* @SIGIO, align 4
  %583 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %584 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @send_sig(i32 %582, i32 %585, i32 0)
  br label %610

587:                                              ; preds = %572
  %588 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %589 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %590 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %588, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %592, i32 0, i32 5
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %596 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %597 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %595, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 4
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %594, %601
  br i1 %602, label %603, label %609

603:                                              ; preds = %587
  %604 = load i32, i32* @SIGIO, align 4
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = call i32 @send_sig(i32 %604, i32 %607, i32 0)
  br label %609

609:                                              ; preds = %603, %587
  br label %610

610:                                              ; preds = %609, %581
  br label %611

611:                                              ; preds = %610, %515, %512
  br label %612

612:                                              ; preds = %611, %224
  br label %613

613:                                              ; preds = %24, %612, %223
  br label %617

614:                                              ; preds = %2, %2
  %615 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %616 = call i32 @i_APCI3200_InterruptHandleEos(%struct.comedi_device* %615)
  br label %617

617:                                              ; preds = %2, %614, %613
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @i_APCI3200_ReadCJCValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCJCCalOffset(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCJCCalGain(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_InterruptHandleEos(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
