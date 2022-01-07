; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo_cs.c_airo_cs_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo_cs.c_airo_cs_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_17__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_25__, %struct.TYPE_26__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i8*)* @airo_cs_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_cs_config_check(%struct.pcmcia_device* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %12, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %301

25:                                               ; preds = %5
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CISTPL_CFTABLE_AUDIO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 10000
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %88

65:                                               ; preds = %43
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 10000
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %87

87:                                               ; preds = %74, %65
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94, %88
  %101 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %102 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %103 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %109 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %112 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %107
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %216

125:                                              ; preds = %119, %107
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  br label %137

134:                                              ; preds = %125
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi %struct.TYPE_26__* [ %133, %131 ], [ %136, %134 ]
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %13, align 8
  %139 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %140 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %141 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 4
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CISTPL_IO_8BIT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %151 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %152 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %137
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %154
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %174 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 5
  store i32 %172, i32* %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %183 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 4
  store i64 %181, i64* %184, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 1
  br i1 %188, label %189, label %215

189:                                              ; preds = %166
  %190 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %191 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %195 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %204 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %213 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  br label %215

215:                                              ; preds = %189, %166
  br label %216

216:                                              ; preds = %215, %119
  %217 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %218 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %219 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %218, i32 0, i32 1
  %220 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %217, %struct.TYPE_17__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i32, i32* @ENODEV, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %6, align 4
  br label %301

225:                                              ; preds = %216
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %300

237:                                              ; preds = %231, %225
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  br label %249

246:                                              ; preds = %237
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 2
  br label %249

249:                                              ; preds = %246, %243
  %250 = phi %struct.TYPE_25__* [ %245, %243 ], [ %248, %246 ]
  store %struct.TYPE_25__* %250, %struct.TYPE_25__** %14, align 8
  %251 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %252 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %253 = or i32 %251, %252
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  store i64 0, i64* %273, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %275 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %276 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %275, i32 0, i32 0
  %277 = call i64 @pcmcia_request_window(%struct.pcmcia_device** %7, %struct.TYPE_23__* %274, i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %249
  %280 = load i32, i32* @ENODEV, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %6, align 4
  br label %301

282:                                              ; preds = %249
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  store i64 0, i64* %283, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  store i32 %289, i32* %290, align 8
  %291 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %292 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i64 @pcmcia_map_mem_page(i32 %293, %struct.TYPE_24__* %15)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %282
  %297 = load i32, i32* @ENODEV, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %6, align 4
  br label %301

299:                                              ; preds = %282
  br label %300

300:                                              ; preds = %299, %231
  store i32 0, i32* %6, align 4
  br label %301

301:                                              ; preds = %300, %296, %279, %222, %22
  %302 = load i32, i32* %6, align 4
  ret i32 %302
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_17__*) #1

declare dso_local i64 @pcmcia_request_window(%struct.pcmcia_device**, %struct.TYPE_23__*, i32*) #1

declare dso_local i64 @pcmcia_map_mem_page(i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
