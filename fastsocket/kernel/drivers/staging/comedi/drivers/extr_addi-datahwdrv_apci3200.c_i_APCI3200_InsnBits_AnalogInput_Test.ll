; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_InsnBits_AnalogInput_Test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_InsnBits_AnalogInput_Test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@s_BoardInfos = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"\0AError in selection of functionality\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@ADDIDATA_DISABLE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_InsnBits_AnalogInput_Test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %314

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %314

41:                                               ; preds = %30, %25
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %168

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %64, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %50, %57
  %59 = add nsw i64 %58, 12
  %60 = call i32 @inl(i64 %59)
  %61 = ashr i32 %60, 19
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %47

65:                                               ; preds = %47
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 4096, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %76, %83
  %85 = add nsw i64 %84, 4
  %86 = call i32 @outl(i32 %73, i64 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i8*, i8** @ADDIDATA_DISABLE, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 %95, i32* %101, align 4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %104 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device* %102, %struct.comedi_subdevice* %103, %struct.comedi_insn* %104, i32* %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FALSE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %65
  br label %117

117:                                              ; preds = %134, %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %120, %127
  %129 = add nsw i64 %128, 12
  %130 = call i32 @inl(i64 %129)
  %131 = ashr i32 %130, 19
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  br label %117

135:                                              ; preds = %117
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = or i32 4096, %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %146, %153
  %155 = add nsw i64 %154, 4
  %156 = call i32 @outl(i32 %143, i64 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %9, align 8
  %159 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %159, i32* %160)
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %9, align 8
  %164 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %164, i32* %165)
  br label %167

167:                                              ; preds = %135, %65
  br label %303

168:                                              ; preds = %41
  br label %169

169:                                              ; preds = %186, %168
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %174 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %172, %179
  %181 = add nsw i64 %180, 12
  %182 = call i32 @inl(i64 %181)
  %183 = ashr i32 %182, 19
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %187

186:                                              ; preds = %169
  br label %169

187:                                              ; preds = %169
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %189 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 2048, %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %200 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %198, %205
  %207 = add nsw i64 %206, 4
  %208 = call i32 @outl(i32 %195, i64 %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %213 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %211, %218
  %220 = add nsw i64 %219, 0
  %221 = call i32 @inl(i64 %220)
  store i32 %221, i32* %10, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %223 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %224 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %11, align 4
  %229 = load i8*, i8** @ADDIDATA_DISABLE, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %232 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  store i32 %230, i32* %236, align 4
  %237 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %238 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %239 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %240 = load i32*, i32** %9, align 8
  %241 = call i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device* %237, %struct.comedi_subdevice* %238, %struct.comedi_insn* %239, i32* %240)
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %243 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %244 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @FALSE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %302

251:                                              ; preds = %187
  br label %252

252:                                              ; preds = %269, %251
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %257 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %258 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %255, %262
  %264 = add nsw i64 %263, 12
  %265 = call i32 @inl(i64 %264)
  %266 = ashr i32 %265, 19
  %267 = and i32 %266, 1
  %268 = icmp ne i32 %267, 1
  br i1 %268, label %269, label %270

269:                                              ; preds = %252
  br label %252

270:                                              ; preds = %252
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %272 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %273 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = or i32 2048, %277
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %283 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %284 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %281, %288
  %290 = add nsw i64 %289, 4
  %291 = call i32 @outl(i32 %278, i64 %290)
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %9, align 8
  %294 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %295 = load i32*, i32** %9, align 8
  %296 = call i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %294, i32* %295)
  %297 = load i32*, i32** %9, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %9, align 8
  %299 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %300 = load i32*, i32** %9, align 8
  %301 = call i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %299, i32* %300)
  br label %302

302:                                              ; preds = %270, %187
  br label %303

303:                                              ; preds = %302, %167
  %304 = load i32, i32* %11, align 4
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %306 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %307 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 2
  store i32 %304, i32* %310, align 4
  %311 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %312 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %5, align 4
  br label %314

314:                                              ; preds = %303, %35, %20
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i32 @i_APCI3200_Reset(%struct.comedi_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device*, i32*) #1

declare dso_local i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
