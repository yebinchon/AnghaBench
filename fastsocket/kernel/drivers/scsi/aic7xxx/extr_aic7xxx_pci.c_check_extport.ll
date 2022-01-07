; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_check_extport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_check_extport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i8, i32, %struct.seeprom_config* }
%struct.seeprom_config = type { i32 }
%struct.seeprom_descriptor = type { i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.ahc_softc* }

@SEECTL = common dso_local global i8* null, align 8
@AHC_LARGE_SEEPROM = common dso_local global i32 0, align 4
@C56_66 = common dso_local global i64 0, align 8
@C46 = common dso_local global i64 0, align 8
@SEEMS = common dso_local global i32 0, align 4
@SEERDY = common dso_local global i32 0, align 4
@SEECS = common dso_local global i32 0, align 4
@SEECK = common dso_local global i32 0, align 4
@SEEDO = common dso_local global i32 0, align 4
@SEEDI = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: Reading SEEPROM...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"checksum error\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@SCBPTR = common dso_local global i32 0, align 4
@SCB_BASE = common dso_local global i64 0, align 8
@SRAM_BASE = common dso_local global i64 0, align 8
@AHC_SCB_CONFIG_USED = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRPARERR = common dso_local global i32 0, align 4
@CLRBRKADRINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: No SEEPROM available.\0A\00", align 1
@AHC_USEDEFAULTS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@AHC_SPIOCAP = common dso_local global i32 0, align 4
@SPIOCAP = common dso_local global i64 0, align 8
@SSPIOCPS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHC_HAS_TERM_LOGIC = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@CFSTERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: Low byte termination %sabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32*)* @check_extport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_extport(%struct.ahc_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.seeprom_descriptor, align 8
  %6 = alloca %struct.seeprom_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 10
  store %struct.ahc_softc* %13, %struct.ahc_softc** %14, align 8
  %15 = load i8*, i8** @SEECTL, align 8
  %16 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 9
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @SEECTL, align 8
  %18 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 8
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @SEECTL, align 8
  %20 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 7
  store i8* %19, i8** %20, align 8
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 3
  %23 = load %struct.seeprom_config*, %struct.seeprom_config** %22, align 8
  store %struct.seeprom_config* %23, %struct.seeprom_config** %6, align 8
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AHC_LARGE_SEEPROM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i64, i64* @C56_66, align 8
  %32 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load i64, i64* @C46, align 8
  %35 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @SEEMS, align 4
  %38 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @SEERDY, align 4
  %40 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 5
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @SEECS, align 4
  %42 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SEECK, align 4
  %44 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @SEEDO, align 4
  %46 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @SEEDI, align 4
  %48 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %50 = call i32 @ahc_acquire_seeprom(%struct.ahc_softc* %49, %struct.seeprom_descriptor* %5)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %113

53:                                               ; preds = %36
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %58 = call i8* @ahc_name(%struct.ahc_softc* %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %97, %60
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 4
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 65
  %67 = mul nsw i32 32, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %69 = bitcast %struct.seeprom_config* %68 to i32*
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ahc_read_seeprom(%struct.seeprom_descriptor* %5, i32* %69, i32 %70, i32 2)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %76 = call i32 @ahc_verify_cksum(%struct.seeprom_config* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %61
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @C56_66, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %80, %77
  %86 = load i64, i64* @bootverbose, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %95

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %85
  br label %100

97:                                               ; preds = %80
  %98 = load i64, i64* @C56_66, align 8
  %99 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  br label %61

100:                                              ; preds = %96
  %101 = call i32 @ahc_release_seeprom(%struct.seeprom_descriptor* %5)
  %102 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %5, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @C56_66, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @AHC_LARGE_SEEPROM, align 4
  %108 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %36
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %193, label %116

116:                                              ; preds = %113
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %118 = load i32, i32* @SCBPTR, align 4
  %119 = call i32 @ahc_outb(%struct.ahc_softc* %117, i32 %118, i32 2)
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %121 = load i64, i64* @SCB_BASE, align 8
  %122 = call i32 @ahc_inb(%struct.ahc_softc* %120, i64 %121)
  %123 = icmp eq i32 %122, 65
  br i1 %123, label %124, label %184

124:                                              ; preds = %116
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %126 = load i64, i64* @SCB_BASE, align 8
  %127 = add nsw i64 %126, 1
  %128 = call i32 @ahc_inb(%struct.ahc_softc* %125, i64 %127)
  %129 = icmp eq i32 %128, 68
  br i1 %129, label %130, label %184

130:                                              ; preds = %124
  %131 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %132 = load i64, i64* @SCB_BASE, align 8
  %133 = add nsw i64 %132, 2
  %134 = call i32 @ahc_inb(%struct.ahc_softc* %131, i64 %133)
  %135 = icmp eq i32 %134, 80
  br i1 %135, label %136, label %184

136:                                              ; preds = %130
  %137 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %138 = load i64, i64* @SCB_BASE, align 8
  %139 = add nsw i64 %138, 3
  %140 = call i32 @ahc_inb(%struct.ahc_softc* %137, i64 %139)
  %141 = icmp eq i32 %140, 84
  br i1 %141, label %142, label %184

142:                                              ; preds = %136
  %143 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %144 = bitcast %struct.seeprom_config* %143 to i32*
  store i32* %144, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %167, %142
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 32
  br i1 %147, label %148, label %172

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %149, 2
  store i32 %150, i32* %12, align 4
  %151 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %152 = load i64, i64* @SRAM_BASE, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = call i32 @ahc_inb(%struct.ahc_softc* %151, i64 %155)
  %157 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %158 = load i64, i64* @SRAM_BASE, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = add nsw i64 %161, 1
  %163 = call i32 @ahc_inb(%struct.ahc_softc* %157, i64 %162)
  %164 = shl i32 %163, 8
  %165 = or i32 %156, %164
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %10, align 8
  br label %145

172:                                              ; preds = %145
  %173 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %174 = call i32 @ahc_verify_cksum(%struct.seeprom_config* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @AHC_SCB_CONFIG_USED, align 4
  %179 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %172
  br label %184

184:                                              ; preds = %183, %136, %130, %124, %116
  %185 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %186 = load i32, i32* @CLRINT, align 4
  %187 = load i32, i32* @CLRPARERR, align 4
  %188 = call i32 @ahc_outb(%struct.ahc_softc* %185, i32 %186, i32 %187)
  %189 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %190 = load i32, i32* @CLRINT, align 4
  %191 = load i32, i32* @CLRBRKADRINT, align 4
  %192 = call i32 @ahc_outb(%struct.ahc_softc* %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %113
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* @bootverbose, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %201 = call i8* @ahc_name(%struct.ahc_softc* %200)
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %205 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %206 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %209, i32 0, i32 3
  %211 = load %struct.seeprom_config*, %struct.seeprom_config** %210, align 8
  %212 = load i32, i32* @M_DEVBUF, align 4
  %213 = call i32 @free(%struct.seeprom_config* %211, i32 %212)
  %214 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %215 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %214, i32 0, i32 3
  store %struct.seeprom_config* null, %struct.seeprom_config** %215, align 8
  store %struct.seeprom_config* null, %struct.seeprom_config** %6, align 8
  br label %220

216:                                              ; preds = %193
  %217 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %218 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %219 = call i32 @ahc_parse_pci_eeprom(%struct.ahc_softc* %217, %struct.seeprom_config* %218)
  br label %220

220:                                              ; preds = %216, %203
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %8, align 4
  %222 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @AHC_SPIOCAP, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %220
  %229 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %230 = load i64, i64* @SPIOCAP, align 8
  %231 = call i32 @ahc_inb(%struct.ahc_softc* %229, i64 %230)
  %232 = load i32, i32* @SSPIOCPS, align 4
  %233 = and i32 %231, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %228
  %236 = load i32, i32* @FALSE, align 4
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %235, %228
  br label %238

238:                                              ; preds = %237, %220
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %238
  %242 = load i32, i32* @AHC_HAS_TERM_LOGIC, align 4
  %243 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %244 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %248 = call i32 @ahc_acquire_seeprom(%struct.ahc_softc* %247, %struct.seeprom_descriptor* %5)
  %249 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %250 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %251 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @configure_termination(%struct.ahc_softc* %249, %struct.seeprom_descriptor* %5, i32 %252, i32* %253)
  %255 = call i32 @ahc_release_seeprom(%struct.seeprom_descriptor* %5)
  br label %292

256:                                              ; preds = %238
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %291

259:                                              ; preds = %256
  %260 = load i32, i32* @STPWEN, align 4
  %261 = xor i32 %260, -1
  %262 = load i32*, i32** %4, align 8
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %261
  store i32 %264, i32* %262, align 4
  %265 = load %struct.seeprom_config*, %struct.seeprom_config** %6, align 8
  %266 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @CFSTERM, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %259
  %272 = load i32, i32* @STPWEN, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %271, %259
  %277 = load i64, i64* @bootverbose, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %276
  %280 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %281 = call i8* @ahc_name(%struct.ahc_softc* %280)
  %282 = load i32*, i32** %4, align 8
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @STPWEN, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %281, i8* %288)
  br label %290

290:                                              ; preds = %279, %276
  br label %291

291:                                              ; preds = %290, %256
  br label %292

292:                                              ; preds = %291, %241
  ret void
}

declare dso_local i32 @ahc_acquire_seeprom(%struct.ahc_softc*, %struct.seeprom_descriptor*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_read_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i32 @ahc_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32 @ahc_release_seeprom(%struct.seeprom_descriptor*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @free(%struct.seeprom_config*, i32) #1

declare dso_local i32 @ahc_parse_pci_eeprom(%struct.ahc_softc*, %struct.seeprom_config*) #1

declare dso_local i32 @configure_termination(%struct.ahc_softc*, %struct.seeprom_descriptor*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
