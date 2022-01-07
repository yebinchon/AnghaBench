; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_compute_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_compute_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@optimize_vco = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"mt2032: rfin=%d lo1=%d lo1n=%d lo1a=%d sel=%d, lo1freq=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"mt2032: rfin=%d lo2=%d lo2n=%d lo2a=%d num=%d lo2freq=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"mt2032: frequency parameters out of range: %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32, i32, i32, i8*, i32*, i32)* @mt2032_compute_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_compute_freq(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_frontend*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.microtune_priv*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = load %struct.microtune_priv*, %struct.microtune_priv** %36, align 8
  store %struct.microtune_priv* %37, %struct.microtune_priv** %20, align 8
  store i32 5250000, i32* %21, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %28, align 4
  %41 = load i32, i32* %28, align 4
  %42 = udiv i32 %41, 1000
  %43 = mul i32 2, %42
  %44 = load i32, i32* %21, align 4
  %45 = udiv i32 %44, 1000
  %46 = add i32 %43, %45
  %47 = load i32, i32* %21, align 4
  %48 = mul i32 2, %47
  %49 = udiv i32 %48, 1000
  %50 = udiv i32 %46, %49
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = udiv i32 %51, 8
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %23, align 4
  %55 = mul i32 %54, 8
  %56 = sub i32 %53, %55
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %12, align 4
  %58 = udiv i32 %57, 1000
  %59 = udiv i32 %58, 1000
  %60 = add i32 %59, 1090
  store i32 %60, i32* %25, align 4
  %61 = load i64, i64* @optimize_vco, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %9
  %64 = load i32, i32* %25, align 4
  %65 = icmp ugt i32 %64, 1890
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %26, align 4
  br label %83

67:                                               ; preds = %63
  %68 = load i32, i32* %25, align 4
  %69 = icmp ugt i32 %68, 1720
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %26, align 4
  br label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %25, align 4
  %73 = icmp ugt i32 %72, 1530
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2, i32* %26, align 4
  br label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %25, align 4
  %77 = icmp ugt i32 %76, 1370
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 3, i32* %26, align 4
  br label %80

79:                                               ; preds = %75
  store i32 4, i32* %26, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %66
  br label %105

84:                                               ; preds = %9
  %85 = load i32, i32* %25, align 4
  %86 = icmp ugt i32 %85, 1790
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %26, align 4
  br label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %25, align 4
  %90 = icmp ugt i32 %89, 1617
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %26, align 4
  br label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %25, align 4
  %94 = icmp ugt i32 %93, 1449
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 2, i32* %26, align 4
  br label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %25, align 4
  %98 = icmp ugt i32 %97, 1291
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 3, i32* %26, align 4
  br label %101

100:                                              ; preds = %96
  store i32 4, i32* %26, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %95
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %26, align 4
  %107 = load i32*, i32** %18, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %23, align 4
  %110 = mul i32 8, %109
  %111 = add i32 %108, %110
  %112 = load i32, i32* %21, align 4
  %113 = mul i32 %111, %112
  store i32 %113, i32* %27, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %27, align 4
  %120 = call i32 @tuner_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %27, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sub i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = sub i32 %123, %124
  store i32 %125, i32* %29, align 4
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* %21, align 4
  %128 = udiv i32 %126, %127
  store i32 %128, i32* %30, align 4
  %129 = load i32, i32* %30, align 4
  %130 = udiv i32 %129, 8
  store i32 %130, i32* %31, align 4
  %131 = load i32, i32* %30, align 4
  %132 = load i32, i32* %31, align 4
  %133 = mul i32 %132, 8
  %134 = sub i32 %131, %133
  store i32 %134, i32* %32, align 4
  %135 = load i32, i32* %29, align 4
  %136 = udiv i32 %135, 1000
  %137 = load i32, i32* %21, align 4
  %138 = udiv i32 %137, 1000
  %139 = urem i32 %136, %138
  %140 = mul i32 %139, 3780
  %141 = load i32, i32* %21, align 4
  %142 = udiv i32 %141, 1000
  %143 = udiv i32 %140, %142
  store i32 %143, i32* %33, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %31, align 4
  %146 = mul i32 8, %145
  %147 = add i32 %144, %146
  %148 = load i32, i32* %21, align 4
  %149 = mul i32 %147, %148
  %150 = load i32, i32* %33, align 4
  %151 = load i32, i32* %21, align 4
  %152 = udiv i32 %151, 1000
  %153 = mul i32 %150, %152
  %154 = udiv i32 %153, 3780
  %155 = mul i32 %154, 1000
  %156 = add i32 %149, %155
  store i32 %156, i32* %34, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %30, align 4
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %32, align 4
  %161 = load i32, i32* %33, align 4
  %162 = load i32, i32* %34, align 4
  %163 = call i32 @tuner_dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %24, align 4
  %165 = icmp ugt i32 %164, 7
  br i1 %165, label %181, label %166

166:                                              ; preds = %105
  %167 = load i32, i32* %23, align 4
  %168 = icmp ult i32 %167, 17
  br i1 %168, label %181, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %23, align 4
  %171 = icmp ugt i32 %170, 48
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %32, align 4
  %174 = icmp ugt i32 %173, 7
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %31, align 4
  %177 = icmp ult i32 %176, 17
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %31, align 4
  %180 = icmp ugt i32 %179, 30
  br i1 %180, label %181, label %187

181:                                              ; preds = %178, %175, %172, %169, %166, %105
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %32, align 4
  %185 = load i32, i32* %31, align 4
  %186 = call i32 @tuner_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 -1, i32* %10, align 4
  br label %251

187:                                              ; preds = %178
  %188 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %189 = load i32, i32* %27, align 4
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @mt2032_spurcheck(%struct.dvb_frontend* %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %23, align 4
  %195 = sub i32 %194, 1
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %17, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  store i8 %196, i8* %198, align 1
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %26, align 4
  %201 = shl i32 %200, 4
  %202 = or i32 %199, %201
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %17, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %205, align 1
  %206 = load i8*, i8** %17, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  store i8 -122, i8* %207, align 1
  %208 = load i8*, i8** %17, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 3
  store i8 15, i8* %209, align 1
  %210 = load i8*, i8** %17, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 4
  store i8 31, i8* %211, align 1
  %212 = load i32, i32* %31, align 4
  %213 = sub i32 %212, 1
  %214 = load i32, i32* %32, align 4
  %215 = shl i32 %214, 5
  %216 = or i32 %213, %215
  %217 = trunc i32 %216 to i8
  %218 = load i8*, i8** %17, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 5
  store i8 %217, i8* %219, align 1
  %220 = load i32, i32* %12, align 4
  %221 = icmp ugt i32 %220, 400000000
  br i1 %221, label %222, label %225

222:                                              ; preds = %187
  %223 = load i8*, i8** %17, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 6
  store i8 -28, i8* %224, align 1
  br label %228

225:                                              ; preds = %187
  %226 = load i8*, i8** %17, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 6
  store i8 -12, i8* %227, align 1
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32, i32* %19, align 4
  %230 = add i32 8, %229
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %17, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 7
  store i8 %231, i8* %233, align 1
  %234 = load i8*, i8** %17, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 8
  store i8 -61, i8* %235, align 1
  %236 = load i8*, i8** %17, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 9
  store i8 78, i8* %237, align 1
  %238 = load i8*, i8** %17, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 10
  store i8 -20, i8* %239, align 1
  %240 = load i32, i32* %33, align 4
  %241 = and i32 %240, 255
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %17, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 11
  store i8 %242, i8* %244, align 1
  %245 = load i32, i32* %33, align 4
  %246 = lshr i32 %245, 8
  %247 = or i32 %246, 128
  %248 = trunc i32 %247 to i8
  %249 = load i8*, i8** %17, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 12
  store i8 %248, i8* %250, align 1
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %228, %181
  %252 = load i32, i32* %10, align 4
  ret i32 %252
}

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tuner_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mt2032_spurcheck(%struct.dvb_frontend*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
