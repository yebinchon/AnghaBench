; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_20__, %struct.TYPE_25__ }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_29__, %struct.TYPE_17__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i32* }
%struct.nsp_cs_configdata = type { %struct.TYPE_19__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i64 }

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
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i8*)* @nsp_cs_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_cs_config_check(%struct.pcmcia_device* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nsp_cs_configdata*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_28__, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.nsp_cs_configdata*
  store %struct.nsp_cs_configdata* %17, %struct.nsp_cs_configdata** %12, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %403

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
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %395

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
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
  br label %403

67:                                               ; preds = %52
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 10000
  %87 = icmp ne i32 %77, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %403

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 10000
  %112 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %113 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %138

115:                                              ; preds = %93
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %115
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %132, 10000
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %135 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %124, %115
  br label %138

138:                                              ; preds = %137, %102
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %144, %138
  %151 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %152 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %153 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %144
  %158 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %159 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %162 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 5
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %157
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %281

175:                                              ; preds = %169, %157
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 3
  br label %187

184:                                              ; preds = %175
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi %struct.TYPE_17__* [ %183, %181 ], [ %186, %184 ]
  store %struct.TYPE_17__* %188, %struct.TYPE_17__** %13, align 8
  %189 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %190 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %191 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  store i32 %189, i32* %192, align 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CISTPL_IO_8BIT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %187
  %200 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %201 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %202 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %199, %187
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 3
  store i32 %212, i32* %215, align 4
  br label %216

216:                                              ; preds = %211, %204
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %221 = and i32 %219, %220
  %222 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %223 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %232 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 6
  store i32 %230, i32* %233, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %241 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 5
  store i64 %239, i64* %242, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp sgt i64 %245, 1
  br i1 %246, label %247, label %273

247:                                              ; preds = %216
  %248 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %249 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %253 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 4
  store i32 %251, i32* %254, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %262 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  store i32 %260, i32* %263, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i64 1
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %271 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  store i64 %269, i64* %272, align 8
  br label %273

273:                                              ; preds = %247, %216
  %274 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %275 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %276 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %275, i32 0, i32 1
  %277 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %274, %struct.TYPE_20__* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %273
  br label %396

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %169
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %394

293:                                              ; preds = %287, %281
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 2
  br label %305

302:                                              ; preds = %293
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 2
  br label %305

305:                                              ; preds = %302, %299
  %306 = phi %struct.TYPE_29__* [ %301, %299 ], [ %304, %302 ]
  store %struct.TYPE_29__* %306, %struct.TYPE_29__** %15, align 8
  %307 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %308 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %309 = or i32 %307, %308
  %310 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %311 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  %313 = load i32, i32* @WIN_ENABLE, align 4
  %314 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %315 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 8
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %326 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 2
  store i32 %324, i32* %327, align 8
  %328 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %335 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 1
  store i32 %333, i32* %336, align 4
  %337 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %338 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %340, 4096
  br i1 %341, label %342, label %346

342:                                              ; preds = %305
  %343 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %344 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 1
  store i32 4096, i32* %345, align 4
  br label %346

346:                                              ; preds = %342, %305
  %347 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %348 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 3
  store i64 0, i64* %349, align 8
  %350 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %351 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %350, i32 0, i32 0
  %352 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %353 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %352, i32 0, i32 0
  %354 = call i64 @pcmcia_request_window(%struct.pcmcia_device** %7, %struct.TYPE_19__* %351, i32* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %346
  br label %396

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i64 0, i64* %358, align 8
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %364, i32* %365, align 8
  %366 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %367 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = call i64 @pcmcia_map_mem_page(i32 %368, %struct.TYPE_28__* %14)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %357
  br label %396

372:                                              ; preds = %357
  %373 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %374 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %378 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @ioremap_nocache(i32 %376, i32 %380)
  %382 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %383 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %382, i32 0, i32 1
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 0
  store i64 %381, i64* %385, align 8
  %386 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %387 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.nsp_cs_configdata*, %struct.nsp_cs_configdata** %12, align 8
  %391 = getelementptr inbounds %struct.nsp_cs_configdata, %struct.nsp_cs_configdata* %390, i32 0, i32 1
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 1
  store i32 %389, i32* %393, align 8
  br label %394

394:                                              ; preds = %372, %287
  store i32 0, i32* %6, align 4
  br label %403

395:                                              ; preds = %43
  br label %396

396:                                              ; preds = %395, %371, %356, %279
  %397 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %398 = call i32 @nsp_dbg(i32 %397, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %399 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %400 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %399)
  %401 = load i32, i32* @ENODEV, align 4
  %402 = sub nsw i32 0, %401
  store i32 %402, i32* %6, align 4
  br label %403

403:                                              ; preds = %396, %394, %88, %64, %22
  %404 = load i32, i32* %6, align 4
  ret i32 %404
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_20__*) #1

declare dso_local i64 @pcmcia_request_window(%struct.pcmcia_device**, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @pcmcia_map_mem_page(i32, %struct.TYPE_28__*) #1

declare dso_local i64 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @nsp_dbg(i32, i8*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
