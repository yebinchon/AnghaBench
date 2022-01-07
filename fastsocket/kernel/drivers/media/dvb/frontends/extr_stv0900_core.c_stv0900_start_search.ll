; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_start_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_start_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32, i32*, i32*, i32, i32*, i64* }

@DEMOD_MODE = common dso_local global i32 0, align 4
@CORRELEXP = common dso_local global i32 0, align 4
@CARHDR = common dso_local global i32 0, align 4
@CARCFG = common dso_local global i32 0, align 4
@CFRUP1 = common dso_local global i32 0, align 4
@CFRUP0 = common dso_local global i32 0, align 4
@CFRLOW1 = common dso_local global i32 0, align 4
@CFRLOW0 = common dso_local global i32 0, align 4
@RTCS2 = common dso_local global i32 0, align 4
@CFR_UP1 = common dso_local global i32 0, align 4
@CFR_UP0 = common dso_local global i32 0, align 4
@CFR_LOW1 = common dso_local global i32 0, align 4
@CFR_LOW0 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@EQUALCFG = common dso_local global i32 0, align 4
@FFECFG = common dso_local global i32 0, align 4
@STV0900_SEARCH_DVBS1 = common dso_local global i64 0, align 8
@STV0900_SEARCH_DSS = common dso_local global i64 0, align 8
@STV0900_AUTO_SEARCH = common dso_local global i64 0, align 8
@VITSCALE = common dso_local global i32 0, align 4
@VAVSRVIT = common dso_local global i32 0, align 4
@SFRSTEP = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@SCAN_ENABLE = common dso_local global i32 0, align 4
@CFR_AUTOSCAN = common dso_local global i32 0, align 4
@S1S2_SEQUENTIAL = common dso_local global i32 0, align 4
@RTC = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stv0900_start_search(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %8 = load i32, i32* @DEMOD_MODE, align 4
  %9 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %7, i32 %8, i32 31)
  %10 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %11 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %16 = load i32, i32* @CORRELEXP, align 4
  %17 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %15, i32 %16, i32 170)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %20 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %25 = load i32, i32* @CARHDR, align 4
  %26 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %24, i32 %25, i32 85)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %29 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 32
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %34 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 5000000
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %41 = load i32, i32* @CARCFG, align 4
  %42 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %40, i32 %41, i32 68)
  %43 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %44 = load i32, i32* @CFRUP1, align 4
  %45 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %43, i32 %44, i32 15)
  %46 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %47 = load i32, i32* @CFRUP0, align 4
  %48 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %46, i32 %47, i32 255)
  %49 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %50 = load i32, i32* @CFRLOW1, align 4
  %51 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %49, i32 %50, i32 240)
  %52 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %53 = load i32, i32* @CFRLOW0, align 4
  %54 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %52, i32 %53, i32 0)
  %55 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %56 = load i32, i32* @RTCS2, align 4
  %57 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %55, i32 %56, i32 104)
  br label %65

58:                                               ; preds = %32
  %59 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %60 = load i32, i32* @CARCFG, align 4
  %61 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %59, i32 %60, i32 196)
  %62 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %63 = load i32, i32* @RTCS2, align 4
  %64 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %62, i32 %63, i32 68)
  br label %65

65:                                               ; preds = %58, %39
  br label %159

66:                                               ; preds = %27
  %67 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %68 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %73, 5000000
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %77 = load i32, i32* @RTCS2, align 4
  %78 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %76, i32 %77, i32 104)
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %81 = load i32, i32* @RTCS2, align 4
  %82 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %80, i32 %81, i32 68)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %85 = load i32, i32* @CARCFG, align 4
  %86 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %84, i32 %85, i32 70)
  %87 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %88 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %103

95:                                               ; preds = %83
  store i32 65536000, i32* %5, align 4
  %96 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %97 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 1000
  %100 = load i32, i32* %5, align 4
  %101 = sdiv i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %6, align 4
  br label %136

103:                                              ; preds = %83
  %104 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %105 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 2000
  store i32 %111, i32* %5, align 4
  %112 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %113 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %118, 5000000
  br i1 %119, label %120, label %123

120:                                              ; preds = %103
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 80
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %103
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 600
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 %127, 16
  store i32 %128, i32* %5, align 4
  %129 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %130 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %131, 1000
  %133 = load i32, i32* %5, align 4
  %134 = sdiv i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %126, %95
  %137 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %138 = load i32, i32* @CFR_UP1, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @MSB(i32 %139)
  %141 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %137, i32 %138, i32 %140)
  %142 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %143 = load i32, i32* @CFR_UP0, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @LSB(i32 %144)
  %146 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %142, i32 %143, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = mul nsw i32 %147, -1
  store i32 %148, i32* %6, align 4
  %149 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %150 = load i32, i32* @CFR_LOW1, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @MSB(i32 %151)
  %153 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %149, i32 %150, i32 %152)
  %154 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %155 = load i32, i32* @CFR_LOW0, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @LSB(i32 %156)
  %158 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %154, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %136, %65
  %160 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %161 = load i32, i32* @CFRINIT1, align 4
  %162 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %160, i32 %161, i32 0)
  %163 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %164 = load i32, i32* @CFRINIT0, align 4
  %165 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %163, i32 %164, i32 0)
  %166 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %167 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sge i32 %168, 32
  br i1 %169, label %170, label %214

170:                                              ; preds = %159
  %171 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %172 = load i32, i32* @EQUALCFG, align 4
  %173 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %171, i32 %172, i32 65)
  %174 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %175 = load i32, i32* @FFECFG, align 4
  %176 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %174, i32 %175, i32 65)
  %177 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %178 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %177, i32 0, i32 5
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @STV0900_SEARCH_DVBS1, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %206, label %186

186:                                              ; preds = %170
  %187 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %188 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %187, i32 0, i32 5
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @STV0900_SEARCH_DSS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %186
  %197 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %198 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %197, i32 0, i32 5
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @STV0900_AUTO_SEARCH, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %196, %186, %170
  %207 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %208 = load i32, i32* @VITSCALE, align 4
  %209 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %207, i32 %208, i32 130)
  %210 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %211 = load i32, i32* @VAVSRVIT, align 4
  %212 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %210, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %206, %196
  br label %214

214:                                              ; preds = %213, %159
  %215 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %216 = load i32, i32* @SFRSTEP, align 4
  %217 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %215, i32 %216, i32 0)
  %218 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %219 = load i32, i32* @TMGTHRISE, align 4
  %220 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %218, i32 %219, i32 224)
  %221 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %222 = load i32, i32* @TMGTHFALL, align 4
  %223 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %221, i32 %222, i32 192)
  %224 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %225 = load i32, i32* @SCAN_ENABLE, align 4
  %226 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %224, i32 %225, i32 0)
  %227 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %228 = load i32, i32* @CFR_AUTOSCAN, align 4
  %229 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %227, i32 %228, i32 0)
  %230 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %231 = load i32, i32* @S1S2_SEQUENTIAL, align 4
  %232 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %230, i32 %231, i32 0)
  %233 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %234 = load i32, i32* @RTC, align 4
  %235 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %233, i32 %234, i32 136)
  %236 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %237 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sge i32 %238, 32
  br i1 %239, label %240, label %291

240:                                              ; preds = %214
  %241 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %242 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %247, 2000000
  br i1 %248, label %249, label %266

249:                                              ; preds = %240
  %250 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %251 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sle i32 %252, 32
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %256 = load i32, i32* @CARFREQ, align 4
  %257 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %255, i32 %256, i32 57)
  br label %262

258:                                              ; preds = %249
  %259 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %260 = load i32, i32* @CARFREQ, align 4
  %261 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %259, i32 %260, i32 137)
  br label %262

262:                                              ; preds = %258, %254
  %263 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %264 = load i32, i32* @CARHDR, align 4
  %265 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %263, i32 %264, i32 64)
  br label %290

266:                                              ; preds = %240
  %267 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %268 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %273, 10000000
  br i1 %274, label %275, label %282

275:                                              ; preds = %266
  %276 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %277 = load i32, i32* @CARFREQ, align 4
  %278 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %276, i32 %277, i32 76)
  %279 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %280 = load i32, i32* @CARHDR, align 4
  %281 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %279, i32 %280, i32 32)
  br label %289

282:                                              ; preds = %266
  %283 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %284 = load i32, i32* @CARFREQ, align 4
  %285 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %283, i32 %284, i32 75)
  %286 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %287 = load i32, i32* @CARHDR, align 4
  %288 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %286, i32 %287, i32 32)
  br label %289

289:                                              ; preds = %282, %275
  br label %290

290:                                              ; preds = %289, %262
  br label %309

291:                                              ; preds = %214
  %292 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %293 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %298, 10000000
  br i1 %299, label %300, label %304

300:                                              ; preds = %291
  %301 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %302 = load i32, i32* @CARFREQ, align 4
  %303 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %301, i32 %302, i32 239)
  br label %308

304:                                              ; preds = %291
  %305 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %306 = load i32, i32* @CARFREQ, align 4
  %307 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %305, i32 %306, i32 237)
  br label %308

308:                                              ; preds = %304, %300
  br label %309

309:                                              ; preds = %308, %290
  %310 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %311 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  switch i32 %316, label %331 [
    i32 128, label %317
    i32 129, label %324
  ]

317:                                              ; preds = %309
  %318 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %319 = load i32, i32* @DMDISTATE, align 4
  %320 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %318, i32 %319, i32 31)
  %321 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %322 = load i32, i32* @DMDISTATE, align 4
  %323 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %321, i32 %322, i32 24)
  br label %332

324:                                              ; preds = %309
  %325 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %326 = load i32, i32* @DMDISTATE, align 4
  %327 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %325, i32 %326, i32 31)
  %328 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %329 = load i32, i32* @DMDISTATE, align 4
  %330 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %328, i32 %329, i32 21)
  br label %332

331:                                              ; preds = %309
  br label %332

332:                                              ; preds = %331, %324, %317
  ret void
}

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @MSB(i32) #1

declare dso_local i32 @LSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
