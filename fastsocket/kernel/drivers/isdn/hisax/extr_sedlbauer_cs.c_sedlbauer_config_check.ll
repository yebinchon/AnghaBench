; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer_cs.c_sedlbauer_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer_cs.c_sedlbauer_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_19__, %struct.TYPE_23__ }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_28__, %struct.TYPE_17__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i64, i32, i32 }
%struct.TYPE_27__ = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_AUDIO = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CCSR_AUDIO_ENA = common dso_local global i32 0, align 4
@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@CISTPL_IO_8BIT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@CISTPL_IO_16BIT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i8*)* @sedlbauer_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sedlbauer_config_check(%struct.pcmcia_device* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %12, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %357

25:                                               ; preds = %5
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CISTPL_CFTABLE_AUDIO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 10000
  %63 = icmp ne i32 %53, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %357

67:                                               ; preds = %52
  br label %94

68:                                               ; preds = %43
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 10000
  %88 = icmp ne i32 %78, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %357

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 10000
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %139

116:                                              ; preds = %94
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %122 = shl i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %116
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 10000
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %125, %116
  br label %139

139:                                              ; preds = %138, %103
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %145, %139
  %152 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %153 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %154 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %145
  %159 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %160 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %163 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %158
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %276

176:                                              ; preds = %170, %158
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  br label %188

185:                                              ; preds = %176
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  br label %188

188:                                              ; preds = %185, %182
  %189 = phi %struct.TYPE_17__* [ %184, %182 ], [ %187, %185 ]
  store %struct.TYPE_17__* %189, %struct.TYPE_17__** %13, align 8
  %190 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %191 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %192 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CISTPL_IO_8BIT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %188
  %201 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %202 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %203 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %188
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %205
  %213 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %214 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %215 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  store i32 %213, i32* %216, align 4
  br label %217

217:                                              ; preds = %212, %205
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %225 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 5
  store i32 %223, i32* %226, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %234 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  store i64 %232, i64* %235, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %238, 1
  br i1 %239, label %240, label %266

240:                                              ; preds = %217
  %241 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %242 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %246 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  store i32 %244, i32* %247, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %255 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i64 1
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %264 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  store i64 %262, i64* %265, align 8
  br label %266

266:                                              ; preds = %240, %217
  %267 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %268 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %269 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %268, i32 0, i32 1
  %270 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %267, %struct.TYPE_19__* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load i32, i32* @ENODEV, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %6, align 4
  br label %357

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %170
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %356

288:                                              ; preds = %282, %276
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  br label %300

297:                                              ; preds = %288
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  br label %300

300:                                              ; preds = %297, %294
  %301 = phi %struct.TYPE_28__* [ %296, %294 ], [ %299, %297 ]
  store %struct.TYPE_28__* %301, %struct.TYPE_28__** %14, align 8
  %302 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %303 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 8
  %307 = load i32, i32* @WIN_ENABLE, align 4
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 8
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 2
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %331 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %332 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %331, i32 0, i32 0
  %333 = call i64 @pcmcia_request_window(%struct.pcmcia_device** %7, %struct.TYPE_26__* %330, i32* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %300
  %336 = load i32, i32* @ENODEV, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %6, align 4
  br label %357

338:                                              ; preds = %300
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  store i64 0, i64* %339, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  store i32 %345, i32* %346, align 8
  %347 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %348 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i64 @pcmcia_map_mem_page(i32 %349, %struct.TYPE_27__* %15)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %338
  %353 = load i32, i32* @ENODEV, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %6, align 4
  br label %357

355:                                              ; preds = %338
  br label %356

356:                                              ; preds = %355, %282
  store i32 0, i32* %6, align 4
  br label %357

357:                                              ; preds = %356, %352, %335, %272, %89, %64, %22
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_19__*) #1

declare dso_local i64 @pcmcia_request_window(%struct.pcmcia_device**, %struct.TYPE_26__*, i32*) #1

declare dso_local i64 @pcmcia_map_mem_page(i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
