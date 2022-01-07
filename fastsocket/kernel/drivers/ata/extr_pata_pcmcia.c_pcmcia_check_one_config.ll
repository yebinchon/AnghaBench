; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pcmcia.c_pcmcia_check_one_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pcmcia.c_pcmcia_check_one_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32* }
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
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
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
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
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
  br label %263

44:                                               ; preds = %29
  br label %71

45:                                               ; preds = %20
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
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
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
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
  br label %263

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %5
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 10000
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %117

94:                                               ; preds = %72
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 10000
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %103, %94
  br label %117

117:                                              ; preds = %116, %81
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %260

129:                                              ; preds = %123, %117
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  br label %141

138:                                              ; preds = %129
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi %struct.TYPE_14__* [ %137, %135 ], [ %140, %138 ]
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %13, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %150 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i64 %148, i64* %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %158 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %141
  %167 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %168 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %169 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 5
  store i32 %167, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %141
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 2
  br i1 %175, label %176, label %213

176:                                              ; preds = %171
  %177 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %178 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  store i32 8, i32* %179, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %187 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 4
  store i64 %185, i64* %188, align 8
  %189 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %190 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 2, i32 1
  %195 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %196 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  %198 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %199 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %200 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %199, i32 0, i32 0
  %201 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %198, %struct.TYPE_16__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %176
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %263

206:                                              ; preds = %176
  %207 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %208 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %212 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %259

213:                                              ; preds = %171
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 1
  br i1 %217, label %218, label %255

218:                                              ; preds = %213
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp sge i32 %224, 16
  br i1 %225, label %226, label %255

226:                                              ; preds = %218
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %234 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  store i32 %232, i32* %235, align 4
  %236 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %237 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  store i32 0, i32* %238, align 8
  %239 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %240 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %241 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %240, i32 0, i32 0
  %242 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %239, %struct.TYPE_16__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %226
  %245 = load i32, i32* @ENODEV, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %6, align 4
  br label %263

247:                                              ; preds = %226
  %248 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %249 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 14
  %253 = load %struct.pcmcia_config_check*, %struct.pcmcia_config_check** %12, align 8
  %254 = getelementptr inbounds %struct.pcmcia_config_check, %struct.pcmcia_config_check* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  br label %258

255:                                              ; preds = %218, %213
  %256 = load i32, i32* @ENODEV, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %6, align 4
  br label %263

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258, %206
  store i32 0, i32* %6, align 4
  br label %263

260:                                              ; preds = %123
  %261 = load i32, i32* @ENODEV, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %6, align 4
  br label %263

263:                                              ; preds = %260, %259, %255, %244, %203, %66, %41
  %264 = load i32, i32* %6, align 4
  ret i32 %264
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
