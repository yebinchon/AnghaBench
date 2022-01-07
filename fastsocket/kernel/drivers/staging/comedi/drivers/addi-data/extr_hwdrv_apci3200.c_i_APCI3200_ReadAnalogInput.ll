; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32*, i32 }

@s_BoardInfos = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\0AThe parameters passed are in error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_ReadAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %601

26:                                               ; preds = %4
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %591 [
    i32 0, label %32
    i32 1, label %530
  ]

32:                                               ; preds = %26
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %36 = call i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, %struct.comedi_insn* %35, i32* %10)
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 0
  %53 = getelementptr inbounds i32, i32* %44, i64 %52
  store i32 %37, i32* %53, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 6
  %77 = getelementptr inbounds i32, i32* %68, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 7
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 8
  %109 = getelementptr inbounds i32, i32* %100, i64 %108
  %110 = call i32 @i_APCI3200_GetChannelCalibrationValue(%struct.comedi_device* %54, i32 %61, i32* %77, i32* %93, i32* %109)
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %158

119:                                              ; preds = %32
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %119
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %158

138:                                              ; preds = %129
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = call i32 @i_APCI3200_ReadCJCValue(%struct.comedi_device* %139, i32* %10)
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %143 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 3
  %157 = getelementptr inbounds i32, i32* %148, i64 %156
  store i32 %141, i32* %157, align 4
  br label %175

158:                                              ; preds = %129, %119, %32
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %160 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %167 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %168 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 3
  %174 = getelementptr inbounds i32, i32* %165, i64 %173
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %158, %138
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %177 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %178 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @FALSE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %234

185:                                              ; preds = %175
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %187 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %188 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @FALSE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %234

195:                                              ; preds = %185
  %196 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %197 = call i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %196, i32* %10)
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %200 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %207 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %208 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, 1
  %214 = getelementptr inbounds i32, i32* %205, i64 %213
  store i32 %198, i32* %214, align 4
  %215 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %216 = call i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %215, i32* %10)
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %219 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %220 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %226 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %227 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, 2
  %233 = getelementptr inbounds i32, i32* %224, i64 %232
  store i32 %217, i32* %233, align 4
  br label %234

234:                                              ; preds = %195, %185, %175
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %236 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %237 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %243, label %374

243:                                              ; preds = %234
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %245 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %246 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @FALSE, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %374

253:                                              ; preds = %243
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %255 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %256 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %374

262:                                              ; preds = %253
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %264 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %265 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 13
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %271 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %272 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %269, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %262
  store i32 1, i32* %11, align 4
  br label %298

279:                                              ; preds = %262
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %281 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %282 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %288 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %289 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %286, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %279
  store i32 0, i32* %11, align 4
  br label %297

296:                                              ; preds = %279
  store i32 1, i32* %11, align 4
  br label %297

297:                                              ; preds = %296, %295
  br label %298

298:                                              ; preds = %297, %278
  %299 = load i32, i32* %11, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %340

301:                                              ; preds = %298
  %302 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %303 = call i32 @i_APCI3200_ReadCJCCalOffset(%struct.comedi_device* %302, i32* %10)
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %306 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %307 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %313 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %314 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = add i64 %318, 4
  %320 = getelementptr inbounds i32, i32* %311, i64 %319
  store i32 %304, i32* %320, align 4
  %321 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %322 = call i32 @i_APCI3200_ReadCJCCalGain(%struct.comedi_device* %321, i32* %10)
  %323 = load i32, i32* %10, align 4
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %325 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %326 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %332 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %333 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = add i64 %337, 5
  %339 = getelementptr inbounds i32, i32* %330, i64 %338
  store i32 %323, i32* %339, align 4
  br label %373

340:                                              ; preds = %298
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %342 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %343 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %349 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %350 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = add i64 %354, 4
  %356 = getelementptr inbounds i32, i32* %347, i64 %355
  store i32 0, i32* %356, align 4
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %358 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %359 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %365 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %366 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = add i64 %370, 5
  %372 = getelementptr inbounds i32, i32* %363, i64 %371
  store i32 0, i32* %372, align 4
  br label %373

373:                                              ; preds = %340, %301
  br label %374

374:                                              ; preds = %373, %253, %243, %234
  %375 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %376 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %377 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 1
  br i1 %382, label %383, label %390

383:                                              ; preds = %374
  %384 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %385 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %386 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 2
  store i64 0, i64* %389, align 8
  br label %405

390:                                              ; preds = %374
  %391 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %392 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %393 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %391, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = add i64 %397, 9
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %400 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %401 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 2
  store i64 %398, i64* %404, align 8
  br label %405

405:                                              ; preds = %390, %383
  %406 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %407 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %408 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 8
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %438

414:                                              ; preds = %405
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %416 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %417 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %438

423:                                              ; preds = %414
  %424 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %425 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %426 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = sub i64 %430, 9
  %432 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %433 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %434 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %432, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 2
  store i64 %431, i64* %437, align 8
  br label %438

438:                                              ; preds = %423, %414, %405
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %440 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %441 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 7
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %529

447:                                              ; preds = %438
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %449 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %450 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 0
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %9, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  store i32 %456, i32* %458, align 4
  %459 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %460 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %461 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 1
  %467 = load i32, i32* %466, align 4
  %468 = load i32*, i32** %9, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 1
  store i32 %467, i32* %469, align 4
  %470 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %471 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %472 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 2
  %478 = load i32, i32* %477, align 4
  %479 = load i32*, i32** %9, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 2
  store i32 %478, i32* %480, align 4
  %481 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %482 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %483 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 1
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 3
  %489 = load i32, i32* %488, align 4
  %490 = load i32*, i32** %9, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 3
  store i32 %489, i32* %491, align 4
  %492 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %493 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %494 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %492, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 1
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 4
  %500 = load i32, i32* %499, align 4
  %501 = load i32*, i32** %9, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 4
  store i32 %500, i32* %502, align 4
  %503 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %504 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %505 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %507, i32 0, i32 1
  %509 = load i32*, i32** %508, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 5
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %9, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 5
  store i32 %511, i32* %513, align 4
  %514 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %515 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %516 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %517 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %515, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %519, i32 0, i32 9
  %521 = load i32, i32* %520, align 8
  %522 = load i32*, i32** %9, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 6
  %524 = load i32*, i32** %9, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 7
  %526 = load i32*, i32** %9, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 8
  %528 = call i32 @i_APCI3200_GetChannelCalibrationValue(%struct.comedi_device* %514, i32 %521, i32* %523, i32* %525, i32* %527)
  br label %529

529:                                              ; preds = %447, %438
  br label %597

530:                                              ; preds = %26
  store i32 0, i32* %12, align 4
  br label %531

531:                                              ; preds = %553, %530
  %532 = load i32, i32* %12, align 4
  %533 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %534 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %537, label %556

537:                                              ; preds = %531
  %538 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %539 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %540 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %538, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %542, i32 0, i32 1
  %544 = load i32*, i32** %543, align 8
  %545 = load i32, i32* %12, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = load i32*, i32** %9, align 8
  %550 = load i32, i32* %12, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  store i32 %548, i32* %552, align 4
  br label %553

553:                                              ; preds = %537
  %554 = load i32, i32* %12, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %12, align 4
  br label %531

556:                                              ; preds = %531
  %557 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %558 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %559 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %557, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %561, i32 0, i32 2
  store i64 0, i64* %562, align 8
  %563 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %564 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %565 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %563, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %567, i32 0, i32 8
  store i32 0, i32* %568, align 4
  %569 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %570 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %571 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %569, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %573, i32 0, i32 7
  %575 = load i32, i32* %574, align 8
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %590

577:                                              ; preds = %556
  %578 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %579 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %580 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %578, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %582, i32 0, i32 0
  store i64 0, i64* %583, align 8
  %584 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %585 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %586 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %584, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i32 0, i32 4
  store i32 0, i32* %589, align 4
  br label %590

590:                                              ; preds = %577, %556
  br label %597

591:                                              ; preds = %26
  %592 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %593 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %594 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %593)
  %595 = load i32, i32* @EINVAL, align 4
  %596 = sub nsw i32 0, %595
  store i32 %596, i32* %5, align 4
  br label %601

597:                                              ; preds = %590, %529
  %598 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %599 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 8
  store i32 %600, i32* %5, align 4
  br label %601

601:                                              ; preds = %597, %591, %21
  %602 = load i32, i32* %5, align 4
  ret i32 %602
}

declare dso_local i32 @i_APCI3200_Reset(%struct.comedi_device*) #1

declare dso_local i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

declare dso_local i32 @i_APCI3200_GetChannelCalibrationValue(%struct.comedi_device*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCJCValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCJCCalOffset(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCJCCalGain(%struct.comedi_device*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
