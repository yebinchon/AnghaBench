; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cs.c_pcmcia_check_one_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cs.c_pcmcia_check_one_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.pcmcia_config_check = type { i64, i64, i32 }

@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@CISTPL_IO_16BIT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i8*)* @pcmcia_check_one_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_check_one_config(%struct.pcmcia_device* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pcmcia_config_check*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.pcmcia_config_check*
  store %struct.pcmcia_config_check* %15, %struct.pcmcia_config_check** %12, align 8
  %16 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %17 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 10000
  %40 = icmp ne i32 %30, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %269

44:                                               ; preds = %29
  br label %71

45:                                               ; preds = %20
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 10000
  %65 = icmp ne i32 %55, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %269

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %5
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 10000
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %117

94:                                               ; preds = %72
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 10000
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %103, %94
  br label %117

117:                                              ; preds = %116, %81
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %266

129:                                              ; preds = %123, %117
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  br label %141

138:                                              ; preds = %129
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi %struct.TYPE_14__* [ %137, %135 ], [ %140, %138 ]
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %13, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %147 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %156 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  store i64 %154, i64* %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %141
  %173 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %174 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %175 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 5
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %141
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 2
  br i1 %181, label %182, label %219

182:                                              ; preds = %177
  %183 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %184 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store i32 8, i32* %185, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %193 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 4
  store i64 %191, i64* %194, align 8
  %195 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %196 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 2, i32 1
  %201 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %202 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 8
  %204 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %205 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %206 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %205, i32 0, i32 0
  %207 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %204, %struct.TYPE_16__* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %182
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %6, align 4
  br label %269

212:                                              ; preds = %182
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %218 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %265

219:                                              ; preds = %177
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 1
  br i1 %223, label %224, label %261

224:                                              ; preds = %219
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp sge i32 %230, 16
  br i1 %231, label %232, label %261

232:                                              ; preds = %224
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %240 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  store i32 %238, i32* %241, align 4
  %242 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %243 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 2
  store i32 0, i32* %244, align 8
  %245 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %246 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %247 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %246, i32 0, i32 0
  %248 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %245, %struct.TYPE_16__* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %232
  %251 = load i32, i32* @ENODEV, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %6, align 4
  br label %269

253:                                              ; preds = %232
  %254 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %255 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, 14
  %259 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %260 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  br label %264

261:                                              ; preds = %224, %219
  %262 = load i32, i32* @ENODEV, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %6, align 4
  br label %269

264:                                              ; preds = %253
  br label %265

265:                                              ; preds = %264, %212
  store i32 0, i32* %6, align 4
  br label %269

266:                                              ; preds = %123
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %266, %265, %261, %250, %209, %66, %41
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
