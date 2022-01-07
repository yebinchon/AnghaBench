; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_check_extport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_check_extport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i8, %struct.seeprom_config*, i32 }
%struct.seeprom_config = type { i32 }
%struct.vpd_config = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: Reading VPD from SEEPROM...\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: VPD parsing %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"successful\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: Reading SEEPROM...\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to read SEEPROM\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"checksum error\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@SCB_BASE = common dso_local global i64 0, align 8
@NVRAM_SCB_OFFSET = common dso_local global i64 0, align 8
@AHD_SCB_CONFIG_USED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: No SEEPROM available.\0A\00", align 1
@AHD_USEDEFAULTS = common dso_local global i32 0, align 4
@CFAUTOTERM = common dso_local global i32 0, align 4
@CFSEAUTOTERM = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@AHD_DUMP_SEEPROM = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_check_extport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_check_extport(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.vpd_config, align 4
  %5 = alloca %struct.seeprom_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 1
  %15 = load %struct.seeprom_config*, %struct.seeprom_config** %14, align 8
  store %struct.seeprom_config* %15, %struct.seeprom_config** %5, align 8
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %17 = call i32 @ahd_acquire_seeprom(%struct.ahd_softc* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %102

20:                                               ; preds = %1
  %21 = load i64, i64* @bootverbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = call i8* @ahd_name(%struct.ahd_softc* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 65
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = add i64 8, %34
  %36 = udiv i64 %35, 2
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = bitcast %struct.vpd_config* %4 to i32*
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @ahd_read_seeprom(%struct.ahd_softc* %38, i32* %39, i32 %40, i32 2, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = call i32 @ahd_parse_vpddata(%struct.ahd_softc* %46, %struct.vpd_config* %4)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %27
  %49 = load i64, i64* @bootverbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %53 = call i8* @ahd_name(%struct.ahd_softc* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %57)
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %64 = call i8* @ahd_name(%struct.ahd_softc* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 8
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 65
  %72 = sext i32 %71 to i64
  %73 = mul i64 2, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %76 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %77 = bitcast %struct.seeprom_config* %76 to i32*
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @ahd_read_seeprom(%struct.ahd_softc* %75, i32* %77, i32 %78, i32 2, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %99

85:                                               ; preds = %66
  %86 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %87 = call i32 @ahd_verify_cksum(%struct.seeprom_config* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %97

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = call i32 @ahd_release_seeprom(%struct.ahd_softc* %100)
  br label %102

102:                                              ; preds = %99, %1
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %234, label %105

105:                                              ; preds = %102
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %107 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %106, i32 255)
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %109 = load i64, i64* @SCB_BASE, align 8
  %110 = load i64, i64* @NVRAM_SCB_OFFSET, align 8
  %111 = add nsw i64 %109, %110
  %112 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %108, i64 %111)
  %113 = sext i8 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 255
  br i1 %115, label %116, label %233

116:                                              ; preds = %105
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %118 = load i64, i64* @SCB_BASE, align 8
  %119 = add nsw i64 %118, 0
  %120 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %117, i64 %119)
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 65
  br i1 %122, label %123, label %144

123:                                              ; preds = %116
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %125 = load i64, i64* @SCB_BASE, align 8
  %126 = add nsw i64 %125, 1
  %127 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %124, i64 %126)
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 68
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %132 = load i64, i64* @SCB_BASE, align 8
  %133 = add nsw i64 %132, 2
  %134 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %131, i64 %133)
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 80
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %139 = load i64, i64* @SCB_BASE, align 8
  %140 = add nsw i64 %139, 3
  %141 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %138, i64 %140)
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 84
  br i1 %143, label %200, label %144

144:                                              ; preds = %137, %130, %123, %116
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %146 = load i64, i64* @SCB_BASE, align 8
  %147 = add nsw i64 %146, 0
  %148 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %145, i64 %147)
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 66
  br i1 %150, label %151, label %172

151:                                              ; preds = %144
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %153 = load i64, i64* @SCB_BASE, align 8
  %154 = add nsw i64 %153, 1
  %155 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %152, i64 %154)
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 73
  br i1 %157, label %158, label %172

158:                                              ; preds = %151
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = load i64, i64* @SCB_BASE, align 8
  %161 = add nsw i64 %160, 2
  %162 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %159, i64 %161)
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 79
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %167 = load i64, i64* @SCB_BASE, align 8
  %168 = add nsw i64 %167, 3
  %169 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %166, i64 %168)
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 83
  br i1 %171, label %200, label %172

172:                                              ; preds = %165, %158, %151, %144
  %173 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %174 = load i64, i64* @SCB_BASE, align 8
  %175 = add nsw i64 %174, 0
  %176 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %173, i64 %175)
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 65
  br i1 %178, label %179, label %233

179:                                              ; preds = %172
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %181 = load i64, i64* @SCB_BASE, align 8
  %182 = add nsw i64 %181, 1
  %183 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %180, i64 %182)
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 83
  br i1 %185, label %186, label %233

186:                                              ; preds = %179
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = load i64, i64* @SCB_BASE, align 8
  %189 = add nsw i64 %188, 2
  %190 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %187, i64 %189)
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 80
  br i1 %192, label %193, label %233

193:                                              ; preds = %186
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %195 = load i64, i64* @SCB_BASE, align 8
  %196 = add nsw i64 %195, 3
  %197 = call signext i8 @ahd_inb_scbram(%struct.ahd_softc* %194, i64 %196)
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 73
  br i1 %199, label %200, label %233

200:                                              ; preds = %193, %165, %137
  %201 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %201, i32 %202)
  %204 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %205 = bitcast %struct.seeprom_config* %204 to i32*
  store i32* %205, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %218, %200
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 64
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %211 = load i64, i64* @SCB_BASE, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  %215 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %210, i64 %214)
  %216 = load i32*, i32** %11, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %11, align 8
  store i32 %215, i32* %216, align 4
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %12, align 4
  br label %206

221:                                              ; preds = %206
  %222 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %223 = call i32 @ahd_verify_cksum(%struct.seeprom_config* %222)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load i32, i32* @AHD_SCB_CONFIG_USED, align 4
  %228 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %229 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %221
  br label %233

233:                                              ; preds = %232, %193, %186, %179, %172, %105
  br label %234

234:                                              ; preds = %233, %102
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %262, label %237

237:                                              ; preds = %234
  %238 = load i64, i64* @bootverbose, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %242 = call i8* @ahd_name(%struct.ahd_softc* %241)
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %240, %237
  %245 = load i32, i32* @AHD_USEDEFAULTS, align 4
  %246 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %247 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %251 = call i32 @ahd_default_config(%struct.ahd_softc* %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* @CFAUTOTERM, align 4
  %253 = load i32, i32* @CFSEAUTOTERM, align 4
  %254 = or i32 %252, %253
  store i32 %254, i32* %6, align 4
  %255 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %256 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %255, i32 0, i32 1
  %257 = load %struct.seeprom_config*, %struct.seeprom_config** %256, align 8
  %258 = load i32, i32* @M_DEVBUF, align 4
  %259 = call i32 @free(%struct.seeprom_config* %257, i32 %258)
  %260 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %261 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %260, i32 0, i32 1
  store %struct.seeprom_config* null, %struct.seeprom_config** %261, align 8
  br label %269

262:                                              ; preds = %234
  %263 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %264 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %265 = call i32 @ahd_parse_cfgdata(%struct.ahd_softc* %263, %struct.seeprom_config* %264)
  store i32 %265, i32* %8, align 4
  %266 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %267 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %262, %244
  %270 = load i32, i32* %8, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %2, align 4
  br label %278

274:                                              ; preds = %269
  %275 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @ahd_configure_termination(%struct.ahd_softc* %275, i32 %276)
  store i32 0, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %272
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @ahd_acquire_seeprom(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_read_seeprom(%struct.ahd_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @ahd_parse_vpddata(%struct.ahd_softc*, %struct.vpd_config*) #1

declare dso_local i32 @ahd_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32 @ahd_release_seeprom(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local signext i8 @ahd_inb_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_default_config(%struct.ahd_softc*) #1

declare dso_local i32 @free(%struct.seeprom_config*, i32) #1

declare dso_local i32 @ahd_parse_cfgdata(%struct.ahd_softc*, %struct.seeprom_config*) #1

declare dso_local i32 @ahd_configure_termination(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
