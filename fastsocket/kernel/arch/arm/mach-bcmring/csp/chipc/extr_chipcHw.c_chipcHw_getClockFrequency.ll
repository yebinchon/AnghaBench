; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_chipcHw_getClockFrequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_chipcHw_getClockFrequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pChipcHw = common dso_local global %struct.TYPE_2__* null, align 8
@chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_MASK = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_INTEGER = common dso_local global i32 0, align 4
@chipcHw_XTAL_FREQ_Hz = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_PREDIVIDER_P1 = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_PREDIVIDER_P2 = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_DIVIDER_NDIV_f_SS = common dso_local global i64 0, align 8
@chipcHw_REG_PLL_DIVIDER_FRAC = common dso_local global i64 0, align 8
@chipcHw_REG_PLL_CLOCK_BYPASS_SELECT = common dso_local global i32 0, align 4
@chipcHw_REV_NUMBER_A0 = common dso_local global i64 0, align 8
@chipcHw_REG_PLL_CLOCK_MDIV_MASK = common dso_local global i32 0, align 4
@chipcHw_REG_DIV_CLOCK_BYPASS_SELECT = common dso_local global i32 0, align 4
@chipcHw_REG_DIV_CLOCK_DIV_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipcHw_getClockFrequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_INTEGER, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  %23 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P1, align 4
  %24 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P2, align 4
  %25 = call i32 @chipcHw_divide(i32 %23, i32 %24)
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = mul nsw i32 %26, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  %36 = load i64, i64* @chipcHw_REG_PLL_DIVIDER_NDIV_f_SS, align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %35, %37
  %39 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P1, align 4
  %40 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P2, align 4
  %41 = load i64, i64* @chipcHw_REG_PLL_DIVIDER_FRAC, align 8
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 %40, %42
  %44 = call i32 @chipcHw_divide(i32 %39, i32 %43)
  %45 = mul nsw i32 %38, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %63

49:                                               ; preds = %1
  %50 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  %51 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P1, align 4
  %52 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P2, align 4
  %53 = call i32 @chipcHw_divide(i32 %51, i32 %52)
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = mul nsw i32 %54, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %49, %21
  %64 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  %65 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P1, align 4
  %66 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_P2, align 4
  %67 = call i32 @chipcHw_divide(i32 %65, i32 %66)
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = mul nsw i32 %68, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %3, align 4
  switch i32 %77, label %165 [
    i32 145, label %78
    i32 147, label %82
    i32 144, label %86
    i32 128, label %90
    i32 143, label %94
    i32 130, label %98
    i32 134, label %102
    i32 133, label %106
    i32 132, label %110
    i32 142, label %114
    i32 129, label %118
    i32 138, label %122
    i32 149, label %126
    i32 146, label %130
    i32 136, label %136
    i32 141, label %139
    i32 140, label %142
    i32 135, label %145
    i32 148, label %150
    i32 131, label %156
    i32 137, label %159
    i32 139, label %162
  ]

78:                                               ; preds = %63
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32* %80, i32** %4, align 8
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %10, align 4
  br label %165

82:                                               ; preds = %63
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32* %84, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %10, align 4
  br label %165

86:                                               ; preds = %63
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  store i32* %88, i32** %4, align 8
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %10, align 4
  br label %165

90:                                               ; preds = %63
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  store i32* %92, i32** %4, align 8
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %10, align 4
  br label %165

94:                                               ; preds = %63
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 6
  store i32* %96, i32** %4, align 8
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %10, align 4
  br label %165

98:                                               ; preds = %63
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 7
  store i32* %100, i32** %4, align 8
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %10, align 4
  br label %165

102:                                              ; preds = %63
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 8
  store i32* %104, i32** %4, align 8
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %10, align 4
  br label %165

106:                                              ; preds = %63
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 9
  store i32* %108, i32** %4, align 8
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %10, align 4
  br label %165

110:                                              ; preds = %63
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 10
  store i32* %112, i32** %4, align 8
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %10, align 4
  br label %165

114:                                              ; preds = %63
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 11
  store i32* %116, i32** %4, align 8
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %10, align 4
  br label %165

118:                                              ; preds = %63
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 12
  store i32* %120, i32** %4, align 8
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %10, align 4
  br label %165

122:                                              ; preds = %63
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 13
  store i32* %124, i32** %4, align 8
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %10, align 4
  br label %165

126:                                              ; preds = %63
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 14
  store i32* %128, i32** %4, align 8
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %10, align 4
  br label %165

130:                                              ; preds = %63
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 15
  store i32* %132, i32** %5, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store i32* %134, i32** %6, align 8
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %10, align 4
  store i32 150, i32* %9, align 4
  br label %165

136:                                              ; preds = %63
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 16
  store i32* %138, i32** %5, align 8
  br label %165

139:                                              ; preds = %63
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 17
  store i32* %141, i32** %5, align 8
  br label %165

142:                                              ; preds = %63
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 18
  store i32* %144, i32** %5, align 8
  br label %165

145:                                              ; preds = %63
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 19
  store i32* %147, i32** %5, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 15
  store i32* %149, i32** %6, align 8
  store i32 151, i32* %9, align 4
  br label %165

150:                                              ; preds = %63
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 20
  store i32* %152, i32** %5, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 14
  store i32* %154, i32** %6, align 8
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %10, align 4
  store i32 150, i32* %9, align 4
  br label %165

156:                                              ; preds = %63
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 21
  store i32* %158, i32** %5, align 8
  br label %165

159:                                              ; preds = %63
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 22
  store i32* %161, i32** %5, align 8
  br label %165

162:                                              ; preds = %63
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 23
  store i32* %164, i32** %5, align 8
  br label %165

165:                                              ; preds = %63, %162, %159, %156, %150, %145, %142, %139, %136, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78
  %166 = load i32*, i32** %4, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %225

168:                                              ; preds = %165
  %169 = load i32*, i32** %4, align 8
  %170 = load volatile i32, i32* %169, align 4
  %171 = load volatile i32, i32* @chipcHw_REG_PLL_CLOCK_BYPASS_SELECT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  store i32 %175, i32* %2, align 4
  br label %315

176:                                              ; preds = %168
  %177 = load i32, i32* %3, align 4
  %178 = icmp eq i32 %177, 145
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 24
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, -16777216
  %185 = lshr i32 %184, 24
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %179
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 24
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, -16777216
  %192 = lshr i32 %191, 24
  br label %194

193:                                              ; preds = %179
  br label %194

194:                                              ; preds = %193, %187
  %195 = phi i32 [ %192, %187 ], [ 256, %193 ]
  %196 = call i32 @chipcHw_divide(i32 %180, i32 %195)
  store i32 %196, i32* %2, align 4
  br label %315

197:                                              ; preds = %176
  %198 = load i32*, i32** %4, align 8
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 13
  %201 = icmp eq i32* %198, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = call i64 (...) @chipcHw_getChipRevisionNumber()
  %204 = load i64, i64* @chipcHw_REV_NUMBER_A0, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %10, align 4
  %208 = ashr i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %206, %202, %197
  %210 = load i32, i32* %10, align 4
  %211 = load i32*, i32** %4, align 8
  %212 = load volatile i32, i32* %211, align 4
  %213 = load volatile i32, i32* @chipcHw_REG_PLL_CLOCK_MDIV_MASK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load i32*, i32** %4, align 8
  %218 = load volatile i32, i32* %217, align 4
  %219 = load volatile i32, i32* @chipcHw_REG_PLL_CLOCK_MDIV_MASK, align 4
  %220 = and i32 %218, %219
  br label %222

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %216
  %223 = phi i32 [ %220, %216 ], [ 256, %221 ]
  %224 = call i32 @chipcHw_divide(i32 %210, i32 %223)
  store i32 %224, i32* %2, align 4
  br label %315

225:                                              ; preds = %165
  %226 = load i32*, i32** %5, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %313

228:                                              ; preds = %225
  store i32 0, i32* %13, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = load volatile i32, i32* %229, align 4
  %231 = load volatile i32, i32* @chipcHw_REG_DIV_CLOCK_BYPASS_SELECT, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  store i32 %235, i32* %2, align 4
  br label %315

236:                                              ; preds = %228
  %237 = load i32*, i32** %6, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %296

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  switch i32 %240, label %295 [
    i32 150, label %241
    i32 151, label %264
  ]

241:                                              ; preds = %239
  %242 = load i32*, i32** %6, align 8
  %243 = load volatile i32, i32* %242, align 4
  %244 = load volatile i32, i32* @chipcHw_REG_PLL_CLOCK_BYPASS_SELECT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  store i32 %248, i32* %13, align 4
  br label %263

249:                                              ; preds = %241
  %250 = load i32*, i32** %6, align 8
  %251 = load volatile i32, i32* %250, align 4
  %252 = load volatile i32, i32* @chipcHw_REG_PLL_CLOCK_MDIV_MASK, align 4
  %253 = and i32 %251, %252
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %249
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @chipcHw_divide(i32 %257, i32 %258)
  br label %261

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i32 [ %259, %256 ], [ 0, %260 ]
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %261, %247
  br label %295

264:                                              ; preds = %239
  %265 = load i32*, i32** %6, align 8
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 15
  %268 = icmp eq i32* %265, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = call i32 @chipcHw_getClockFrequency(i32 146)
  store i32 %270, i32* %13, align 4
  br label %294

271:                                              ; preds = %264
  %272 = load i32*, i32** %6, align 8
  %273 = load volatile i32, i32* %272, align 4
  %274 = load volatile i32, i32* @chipcHw_REG_DIV_CLOCK_BYPASS_SELECT, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  store i32 %278, i32* %13, align 4
  br label %293

279:                                              ; preds = %271
  %280 = load i32*, i32** %6, align 8
  %281 = load volatile i32, i32* %280, align 4
  %282 = load volatile i32, i32* @chipcHw_REG_DIV_CLOCK_DIV_MASK, align 4
  %283 = and i32 %281, %282
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = load i32, i32* %12, align 4
  br label %290

289:                                              ; preds = %279
  br label %290

290:                                              ; preds = %289, %287
  %291 = phi i32 [ %288, %287 ], [ 256, %289 ]
  %292 = call i32 @chipcHw_divide(i32 %284, i32 %291)
  store i32 %292, i32* %13, align 4
  br label %293

293:                                              ; preds = %290, %277
  br label %294

294:                                              ; preds = %293, %269
  br label %295

295:                                              ; preds = %239, %294, %263
  br label %298

296:                                              ; preds = %236
  %297 = load i32, i32* @chipcHw_XTAL_FREQ_Hz, align 4
  store i32 %297, i32* %13, align 4
  br label %298

298:                                              ; preds = %296, %295
  br label %299

299:                                              ; preds = %298
  %300 = load i32*, i32** %5, align 8
  %301 = load volatile i32, i32* %300, align 4
  %302 = load volatile i32, i32* @chipcHw_REG_DIV_CLOCK_DIV_MASK, align 4
  %303 = and i32 %301, %302
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %299
  %308 = load i32, i32* %12, align 4
  br label %310

309:                                              ; preds = %299
  br label %310

310:                                              ; preds = %309, %307
  %311 = phi i32 [ %308, %307 ], [ 256, %309 ]
  %312 = call i32 @chipcHw_divide(i32 %304, i32 %311)
  store i32 %312, i32* %2, align 4
  br label %315

313:                                              ; preds = %225
  br label %314

314:                                              ; preds = %313
  store i32 0, i32* %2, align 4
  br label %315

315:                                              ; preds = %314, %310, %234, %222, %194, %174
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @chipcHw_divide(i32, i32) #1

declare dso_local i64 @chipcHw_getChipRevisionNumber(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
