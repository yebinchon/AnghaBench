; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt2060.c_mt2060_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt2060.c_mt2060_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.mt2060_priv* }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i64 }
%struct.mt2060_priv = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@REG_LO1B1 = common dso_local global i32 0, align 4
@FE_OFDM = common dso_local global i64 0, align 8
@IF2 = common dso_local global i32 0, align 4
@FREF = common dso_local global i32 0, align 4
@REG_LO1C1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"IF1: %dMHz\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"PLL freq=%dkHz  f_lo1=%dkHz  f_lo2=%dkHz\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PLL div1=%d  num1=%d  div2=%d  num2=%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"PLL [1..5]: %2x %2x %2x %2x %2x\00", align 1
@REG_LO_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mt2060_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2060_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.mt2060_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  %20 = load %struct.mt2060_priv*, %struct.mt2060_priv** %19, align 8
  store %struct.mt2060_priv* %20, %struct.mt2060_priv** %5, align 8
  %21 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* @REG_LO1B1, align 4
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 255, i32* %26, align 4
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %38 = bitcast %struct.dvb_frontend* %37 to %struct.dvb_frontend.0*
  %39 = call i32 %36(%struct.dvb_frontend.0* %38, i32 1)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %43 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %41, i32* %42, i32 2)
  %44 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 1000
  store i32 %47, i32* %8, align 4
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FE_OFDM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  %64 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %65 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %67, 1000
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 250
  %72 = mul nsw i32 %71, 250
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @IF2, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 25
  %80 = sdiv i32 %79, 50
  %81 = mul nsw i32 %80, 50
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @IF2, align 4
  %86 = sub nsw i32 %84, %85
  %87 = mul nsw i32 %86, 1000
  %88 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @FREF, align 4
  %92 = sdiv i32 %91, 64
  %93 = sdiv i32 %90, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sdiv i32 %94, 64
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 63
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %98, 64
  %100 = load i32, i32* @FREF, align 4
  %101 = sdiv i32 %100, 128
  %102 = sdiv i32 %99, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sdiv i32 %103, 8192
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %105, 8191
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sle i32 %107, 95000
  br i1 %108, label %109, label %110

109:                                              ; preds = %62
  store i32 176, i32* %9, align 4
  br label %156

110:                                              ; preds = %62
  %111 = load i32, i32* %8, align 4
  %112 = icmp sle i32 %111, 180000
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 160, i32* %9, align 4
  br label %155

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = icmp sle i32 %115, 260000
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 144, i32* %9, align 4
  br label %154

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = icmp sle i32 %119, 335000
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 128, i32* %9, align 4
  br label %153

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 425000
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 112, i32* %9, align 4
  br label %152

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %127, 480000
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 96, i32* %9, align 4
  br label %151

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = icmp sle i32 %131, 570000
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 80, i32* %9, align 4
  br label %150

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = icmp sle i32 %135, 645000
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 64, i32* %9, align 4
  br label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = icmp sle i32 %139, 730000
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 48, i32* %9, align 4
  br label %148

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %143, 810000
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 32, i32* %9, align 4
  br label %147

146:                                              ; preds = %142
  store i32 16, i32* %9, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %141
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %125
  br label %153

153:                                              ; preds = %152, %121
  br label %154

154:                                              ; preds = %153, %117
  br label %155

155:                                              ; preds = %154, %113
  br label %156

156:                                              ; preds = %155, %109
  %157 = load i32, i32* @REG_LO1C1, align 4
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %157, i32* %158, align 16
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %13, align 4
  %161 = ashr i32 %160, 2
  %162 = and i32 %161, 15
  %163 = or i32 %159, %162
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %12, align 4
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %165, i32* %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %167, 15
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, 3
  %171 = shl i32 %170, 4
  %172 = or i32 %168, %171
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* %15, align 4
  %175 = ashr i32 %174, 4
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  store i32 %175, i32* %176, align 16
  %177 = load i32, i32* %15, align 4
  %178 = ashr i32 %177, 12
  %179 = and i32 %178, 1
  %180 = load i32, i32* %14, align 4
  %181 = shl i32 %180, 1
  %182 = or i32 %179, %181
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %202 = load i32, i32* %201, align 16
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %198, i32 %200, i32 %202, i32 %204)
  %206 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %208 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %206, i32* %207, i32 6)
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %223, %156
  %210 = load %struct.mt2060_priv*, %struct.mt2060_priv** %5, align 8
  %211 = load i32, i32* @REG_LO_STATUS, align 4
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %213 = call i32 @mt2060_readreg(%struct.mt2060_priv* %210, i32 %211, i32* %212)
  %214 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %215 = load i32, i32* %214, align 16
  %216 = and i32 %215, 136
  %217 = icmp eq i32 %216, 136
  br i1 %217, label %218, label %219

218:                                              ; preds = %209
  br label %226

219:                                              ; preds = %209
  %220 = call i32 @msleep(i32 4)
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = icmp slt i32 %224, 10
  br i1 %225, label %209, label %226

226:                                              ; preds = %223, %218
  %227 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %228 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %229, align 8
  %231 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %226
  %233 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %234 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %235, align 8
  %237 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %238 = bitcast %struct.dvb_frontend* %237 to %struct.dvb_frontend.0*
  %239 = call i32 %236(%struct.dvb_frontend.0* %238, i32 0)
  br label %240

240:                                              ; preds = %232, %226
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @mt2060_writeregs(%struct.mt2060_priv*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @mt2060_readreg(%struct.mt2060_priv*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
