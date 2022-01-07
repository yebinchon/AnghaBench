; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_configure_termination.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_configure_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }
%struct.seeprom_descriptor = type { i32, i32 }

@CFAUTOTERM = common dso_local global i32 0, align 4
@AHC_NEW_TERMCTL = common dso_local global i32 0, align 4
@CFSEAUTOTERM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: Manual SE Termination\0A\00", align 1
@CFSELOWTERM = common dso_local global i32 0, align 4
@CFSEHIGHTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Manual LVD Termination\0A\00", align 1
@CFSTERM = common dso_local global i32 0, align 4
@CFWSTERM = common dso_local global i32 0, align 4
@AHC_SPIOCAP = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: internal 50 cable %s present\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c", internal 68 cable %s present\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0A%s: external cable %s present\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: BIOS eeprom %s present\0A\00", align 1
@AHC_INT50_SPEEDFLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [94 x i8] c"%s: Illegal cable configuration!!. Only two connectors on the adapter may be used at a time!\0A\00", align 1
@BRDDAT6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: 68 pin termination Enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: %sHigh byte termination Enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Secondary \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BRDDAT5 = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: 50 pin termination Enabled\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: %sLow byte termination Enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: Primary Low Byte termination Enabled\0A\00", align 1
@SXFRCTL1 = common dso_local global i32 0, align 4
@BRDDAT4 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"%s: Primary High Byte termination Enabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Primary \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.seeprom_descriptor*, i32, i32*)* @configure_termination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_termination(%struct.ahc_softc* %0, %struct.seeprom_descriptor* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.seeprom_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.seeprom_descriptor* %1, %struct.seeprom_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %21 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %20, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CFAUTOTERM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AHC_NEW_TERMCTL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %319

40:                                               ; preds = %33, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AHC_NEW_TERMCTL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %49 = call i32 @ahc_new_term_detect(%struct.ahc_softc* %48, i32* %14, i32* %15, i32* %16, i32* %17, i32* %13)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CFSEAUTOTERM, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %59 = call i8* @ahc_name(%struct.ahc_softc* %58)
  %60 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CFSELOWTERM, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CFSEHIGHTERM, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %61, %47
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @CFAUTOTERM, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i64, i64* @bootverbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %78 = call i8* @ahc_name(%struct.ahc_softc* %77)
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @CFSTERM, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CFWSTERM, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %80, %68
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %102

88:                                               ; preds = %40
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AHC_SPIOCAP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %97 = call i32 @aic785X_cable_detect(%struct.ahc_softc* %96, i32* %10, i32* %12, i32* %13)
  store i32 0, i32* %11, align 4
  br label %101

98:                                               ; preds = %88
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %100 = call i32 @aic787X_cable_detect(%struct.ahc_softc* %99, i32* %10, i32* %11, i32* %12, i32* %13)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %87
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %104 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AHC_WIDE, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = load i64, i64* @bootverbose, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %115 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AHC_ULTRA2, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %113
  %121 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %122 = call i8* @ahc_name(%struct.ahc_softc* %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %127 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %122, i8* %126)
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %129 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AHC_WIDE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %139 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %134, %120
  %141 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %142 = call i8* @ahc_name(%struct.ahc_softc* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %147 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %142, i8* %146)
  br label %148

148:                                              ; preds = %140, %113, %110
  %149 = load i64, i64* @bootverbose, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %153 = call i8* @ahc_name(%struct.ahc_softc* %152)
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %158 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %153, i8* %157)
  br label %159

159:                                              ; preds = %151, %148
  %160 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %166, %159
  %168 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %169 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AHC_ULTRA2, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %185 = call i8* @ahc_name(%struct.ahc_softc* %184)
  %186 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i8* %185)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %183, %180, %177, %174, %167
  %188 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %189 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AHC_WIDE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %230

194:                                              ; preds = %187
  %195 = load i32, i32* %12, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %11, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %200, %197, %194
  %204 = load i32, i32* @BRDDAT6, align 4
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i64, i64* @bootverbose, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %211 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %218 = call i8* @ahc_name(%struct.ahc_softc* %217)
  %219 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %218)
  br label %228

220:                                              ; preds = %209
  %221 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %222 = call i8* @ahc_name(%struct.ahc_softc* %221)
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %227 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %222, i8* %226)
  br label %228

228:                                              ; preds = %220, %216
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229, %200, %187
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %241, label %238

238:                                              ; preds = %230
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %281

241:                                              ; preds = %238, %230
  %242 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %243 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @AHC_ULTRA2, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load i32, i32* @BRDDAT5, align 4
  %250 = load i32, i32* %9, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %9, align 4
  br label %257

252:                                              ; preds = %241
  %253 = load i32, i32* @STPWEN, align 4
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %253
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %248
  %258 = load i64, i64* @bootverbose, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %280

260:                                              ; preds = %257
  %261 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %262 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %260
  %268 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %269 = call i8* @ahc_name(%struct.ahc_softc* %268)
  %270 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %269)
  br label %279

271:                                              ; preds = %260
  %272 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %273 = call i8* @ahc_name(%struct.ahc_softc* %272)
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %278 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %273, i8* %277)
  br label %279

279:                                              ; preds = %271, %267
  br label %280

280:                                              ; preds = %279, %257
  br label %281

281:                                              ; preds = %280, %238
  %282 = load i32, i32* %16, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %281
  %285 = load i32, i32* @STPWEN, align 4
  %286 = load i32*, i32** %8, align 8
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %285
  store i32 %288, i32* %286, align 4
  %289 = load i64, i64* @bootverbose, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %293 = call i8* @ahc_name(%struct.ahc_softc* %292)
  %294 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %293)
  br label %295

295:                                              ; preds = %291, %284
  br label %296

296:                                              ; preds = %295, %281
  %297 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %298 = load i32, i32* @SXFRCTL1, align 4
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @ahc_outb(%struct.ahc_softc* %297, i32 %298, i32 %300)
  %302 = load i32, i32* %17, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %296
  %305 = load i32, i32* @BRDDAT4, align 4
  %306 = load i32, i32* %9, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %9, align 4
  %308 = load i64, i64* @bootverbose, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %312 = call i8* @ahc_name(%struct.ahc_softc* %311)
  %313 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i8* %312)
  br label %314

314:                                              ; preds = %310, %304
  br label %315

315:                                              ; preds = %314, %296
  %316 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %317 = load i32, i32* %9, align 4
  %318 = call i32 @write_brdctl(%struct.ahc_softc* %316, i32 %317)
  br label %392

319:                                              ; preds = %33
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* @CFSTERM, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %344

324:                                              ; preds = %319
  %325 = load i32, i32* @STPWEN, align 4
  %326 = load i32*, i32** %8, align 8
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %325
  store i32 %328, i32* %326, align 4
  %329 = load i64, i64* @bootverbose, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %324
  %332 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %333 = call i8* @ahc_name(%struct.ahc_softc* %332)
  %334 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %335 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @AHC_ULTRA2, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %342 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %333, i8* %341)
  br label %343

343:                                              ; preds = %331, %324
  br label %344

344:                                              ; preds = %343, %319
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* @CFWSTERM, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %375

349:                                              ; preds = %344
  %350 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %351 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @AHC_WIDE, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %375

356:                                              ; preds = %349
  %357 = load i32, i32* @BRDDAT6, align 4
  %358 = load i32, i32* %9, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %9, align 4
  %360 = load i64, i64* @bootverbose, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %364 = call i8* @ahc_name(%struct.ahc_softc* %363)
  %365 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %366 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @AHC_ULTRA2, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %373 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %364, i8* %372)
  br label %374

374:                                              ; preds = %362, %356
  br label %375

375:                                              ; preds = %374, %349, %344
  %376 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %377 = load i32, i32* @SXFRCTL1, align 4
  %378 = load i32*, i32** %8, align 8
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @ahc_outb(%struct.ahc_softc* %376, i32 %377, i32 %379)
  %381 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %382 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @AHC_WIDE, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %375
  %388 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %389 = load i32, i32* %9, align 4
  %390 = call i32 @write_brdctl(%struct.ahc_softc* %388, i32 %389)
  br label %391

391:                                              ; preds = %387, %375
  br label %392

392:                                              ; preds = %391, %315
  %393 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %394 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %395 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %393, i32 %396)
  ret void
}

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @ahc_new_term_detect(%struct.ahc_softc*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @aic785X_cable_detect(%struct.ahc_softc*, i32*, i32*, i32*) #1

declare dso_local i32 @aic787X_cable_detect(%struct.ahc_softc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @write_brdctl(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
