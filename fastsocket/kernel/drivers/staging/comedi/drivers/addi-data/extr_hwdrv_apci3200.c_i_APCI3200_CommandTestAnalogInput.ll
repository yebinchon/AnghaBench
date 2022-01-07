; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_CommandTestAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_CommandTestAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@s_BoardInfos = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0AThe trigger edge selection is in error\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\0AThe trigger mode selection is in error\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\0AThe selection of conversion time reload value is in error\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\0AThe selection of conversion time unit  is in error\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\0AThe Delay time base selection is in error\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\0AThe Delay time value is in error\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\0ASCAN Delay value cannot be used\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_CommandTestAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @TRIG_NOW, align 4
  %24 = load i32, i32* @TRIG_EXT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %3
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @TRIG_TIMER, align 4
  %48 = load i32, i32* @TRIG_FOLLOW, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %43
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @TRIG_TIMER, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %67
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @TRIG_COUNT, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102, %89
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @TRIG_COUNT, align 4
  %116 = load i32, i32* @TRIG_NONE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126, %111
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %135
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %152 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %151)
  store i32 1, i32* %4, align 4
  br label %436

153:                                              ; preds = %147
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TRIG_NOW, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TRIG_EXT, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %165, %159, %153
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TRIG_EXT, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %168
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 65535
  store i32 %178, i32* %15, align 4
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 16
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %188, label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %15, align 4
  %187 = icmp sgt i32 %186, 3
  br i1 %187, label %188, label %192

188:                                              ; preds = %185, %174
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  %191 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 2
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  %198 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %199

199:                                              ; preds = %195, %192
  br label %200

200:                                              ; preds = %199, %168
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @TRIG_TIMER, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @TRIG_FOLLOW, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %212, %206, %200
  %216 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @TRIG_TIMER, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %221, %215
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TRIG_COUNT, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i32, i32* @TRIG_COUNT, align 4
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %230, %224
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @TRIG_NONE, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %236
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @TRIG_COUNT, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %248, %242, %236
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %256 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %255)
  store i32 2, i32* %4, align 4
  br label %436

257:                                              ; preds = %251
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %264 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %265 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  store i32 %262, i32* %268, align 8
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 6
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %275 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %276 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  store i32 %273, i32* %279, align 4
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @TRIG_TIMER, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %257
  %286 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %287 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, 65535
  store i32 %289, i32* %10, align 4
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = ashr i32 %292, 16
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 20
  br i1 %295, label %296, label %309

296:                                              ; preds = %285
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 40
  br i1 %298, label %299, label %309

299:                                              ; preds = %296
  %300 = load i32, i32* %10, align 4
  %301 = icmp ne i32 %300, 80
  br i1 %301, label %302, label %309

302:                                              ; preds = %299
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 160
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %305, %302, %299, %296, %285
  %310 = load i32, i32* %11, align 4
  %311 = icmp ne i32 %310, 2
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %316

316:                                              ; preds = %312, %309
  br label %318

317:                                              ; preds = %257
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %318

318:                                              ; preds = %317, %316
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @TRIG_FOLLOW, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %429

325:                                              ; preds = %318
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 65535
  store i32 %329, i32* %12, align 4
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 8
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 16
  store i32 %333, i32* %13, align 4
  %334 = load i32, i32* %13, align 4
  %335 = icmp ne i32 %334, 2
  br i1 %335, label %336, label %343

336:                                              ; preds = %325
  %337 = load i32, i32* %13, align 4
  %338 = icmp ne i32 %337, 3
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %343

343:                                              ; preds = %339, %336, %325
  %344 = load i32, i32* %12, align 4
  %345 = icmp ult i32 %344, 1
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = load i32, i32* %12, align 4
  %348 = icmp ugt i32 %347, 1023
  br i1 %348, label %349, label %353

349:                                              ; preds = %346, %343
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  %352 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %353

353:                                              ; preds = %349, %346
  %354 = load i32, i32* %8, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %358 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %357)
  store i32 3, i32* %4, align 4
  br label %436

359:                                              ; preds = %353
  %360 = call i32 (...) @fpu_begin()
  %361 = load i32, i32* %12, align 4
  %362 = uitofp i32 %361 to double
  store double %362, double* %19, align 8
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %364 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %365 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_BoardInfos, align 8
  %371 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %372 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = sub nsw i32 %369, %376
  %378 = add nsw i32 %377, 4
  store i32 %378, i32* %16, align 4
  %379 = load i32, i32* %10, align 4
  %380 = uitofp i32 %379 to double
  %381 = load i32, i32* %16, align 4
  %382 = sitofp i32 %381 to double
  %383 = fdiv double %380, %382
  store double %383, double* %18, align 8
  %384 = load double, double* %18, align 8
  %385 = fdiv double 1.000000e+00, %384
  store double %385, double* %18, align 8
  store i32 3, i32* %11, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp ule i32 %386, %387
  br i1 %388, label %389, label %405

389:                                              ; preds = %359
  store i32 0, i32* %17, align 4
  br label %390

390:                                              ; preds = %401, %389
  %391 = load i32, i32* %17, align 4
  %392 = load i32, i32* %11, align 4
  %393 = load i32, i32* %13, align 4
  %394 = sub i32 %392, %393
  %395 = icmp ult i32 %391, %394
  br i1 %395, label %396, label %404

396:                                              ; preds = %390
  %397 = load double, double* %18, align 8
  %398 = fmul double %397, 1.000000e+03
  store double %398, double* %18, align 8
  %399 = load double, double* %18, align 8
  %400 = fadd double %399, 1.000000e+00
  store double %400, double* %18, align 8
  br label %401

401:                                              ; preds = %396
  %402 = load i32, i32* %17, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %17, align 4
  br label %390

404:                                              ; preds = %390
  br label %419

405:                                              ; preds = %359
  store i32 0, i32* %17, align 4
  br label %406

406:                                              ; preds = %415, %405
  %407 = load i32, i32* %17, align 4
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %11, align 4
  %410 = sub i32 %408, %409
  %411 = icmp ult i32 %407, %410
  br i1 %411, label %412, label %418

412:                                              ; preds = %406
  %413 = load double, double* %19, align 8
  %414 = fmul double %413, 1.000000e+03
  store double %414, double* %19, align 8
  br label %415

415:                                              ; preds = %412
  %416 = load i32, i32* %17, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %17, align 4
  br label %406

418:                                              ; preds = %406
  br label %419

419:                                              ; preds = %418, %404
  %420 = load double, double* %18, align 8
  %421 = load double, double* %19, align 8
  %422 = fcmp oge double %420, %421
  br i1 %422, label %423, label %427

423:                                              ; preds = %419
  %424 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %425 = load i32, i32* %8, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %8, align 4
  br label %427

427:                                              ; preds = %423, %419
  %428 = call i32 (...) @fpu_end()
  br label %429

429:                                              ; preds = %427, %324
  %430 = load i32, i32* %8, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %434 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %433)
  store i32 4, i32* %4, align 4
  br label %436

435:                                              ; preds = %429
  store i32 0, i32* %4, align 4
  br label %436

436:                                              ; preds = %435, %432, %356, %254, %150
  %437 = load i32, i32* %4, align 4
  ret i32 %437
}

declare dso_local i32 @i_APCI3200_Reset(%struct.comedi_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @fpu_begin(...) #1

declare dso_local i32 @fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
