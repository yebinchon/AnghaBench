; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_conf_fast_divbias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_conf_fast_divbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw_antcomb_conf = type { i32, i32, i32, i32, i64, i64 }
%struct.ath_ant_comb = type { i32 }

@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32)* @ath_ant_div_conf_fast_divbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf* %0, %struct.ath_ant_comb* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %5 = alloca %struct.ath_ant_comb*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw_antcomb_conf* %0, %struct.ath_hw_antcomb_conf** %4, align 8
  store %struct.ath_ant_comb* %1, %struct.ath_ant_comb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %3
  %16 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 4
  %20 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %21 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  switch i32 %23, label %60 [
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
    i32 16, label %33
    i32 18, label %36
    i32 19, label %39
    i32 32, label %42
    i32 33, label %45
    i32 35, label %48
    i32 48, label %51
    i32 49, label %54
    i32 50, label %57
  ]

24:                                               ; preds = %15
  %25 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %26 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %25, i32 0, i32 3
  store i32 59, i32* %26, align 4
  br label %61

27:                                               ; preds = %15
  %28 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %28, i32 0, i32 3
  store i32 61, i32* %29, align 4
  br label %61

30:                                               ; preds = %15
  %31 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %32 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  br label %61

33:                                               ; preds = %15
  %34 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %35 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %34, i32 0, i32 3
  store i32 7, i32* %35, align 4
  br label %61

36:                                               ; preds = %15
  %37 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %38 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %37, i32 0, i32 3
  store i32 2, i32* %38, align 4
  br label %61

39:                                               ; preds = %15
  %40 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %41 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %40, i32 0, i32 3
  store i32 7, i32* %41, align 4
  br label %61

42:                                               ; preds = %15
  %43 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %43, i32 0, i32 3
  store i32 6, i32* %44, align 4
  br label %61

45:                                               ; preds = %15
  %46 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  br label %61

48:                                               ; preds = %15
  %49 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %49, i32 0, i32 3
  store i32 6, i32* %50, align 4
  br label %61

51:                                               ; preds = %15
  %52 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %53 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %61

54:                                               ; preds = %15
  %55 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %56 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %55, i32 0, i32 3
  store i32 59, i32* %56, align 4
  br label %61

57:                                               ; preds = %15
  %58 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %58, i32 0, i32 3
  store i32 61, i32* %59, align 4
  br label %61

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24
  br label %377

62:                                               ; preds = %3
  %63 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %64 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %166

67:                                               ; preds = %62
  %68 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %69 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 4
  %72 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %73 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  switch i32 %75, label %164 [
    i32 1, label %76
    i32 2, label %79
    i32 3, label %82
    i32 16, label %85
    i32 18, label %101
    i32 19, label %104
    i32 32, label %120
    i32 33, label %136
    i32 35, label %139
    i32 48, label %155
    i32 49, label %158
    i32 50, label %161
  ]

76:                                               ; preds = %67
  %77 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %78 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  br label %165

79:                                               ; preds = %67
  %80 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %165

82:                                               ; preds = %67
  %83 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %84 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %165

85:                                               ; preds = %67
  %86 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %87 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %96 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %95, i32 0, i32 3
  store i32 63, i32* %96, align 4
  br label %100

97:                                               ; preds = %90, %85
  %98 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %99 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %165

101:                                              ; preds = %67
  %102 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %165

104:                                              ; preds = %67
  %105 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %106 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %115 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %114, i32 0, i32 3
  store i32 63, i32* %115, align 4
  br label %119

116:                                              ; preds = %109, %104
  %117 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %118 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %117, i32 0, i32 3
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %165

120:                                              ; preds = %67
  %121 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %122 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %130, i32 0, i32 3
  store i32 63, i32* %131, align 4
  br label %135

132:                                              ; preds = %125, %120
  %133 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %134 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %165

136:                                              ; preds = %67
  %137 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %138 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  br label %165

139:                                              ; preds = %67
  %140 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %141 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %150 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %149, i32 0, i32 3
  store i32 63, i32* %150, align 4
  br label %154

151:                                              ; preds = %144, %139
  %152 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %153 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %165

155:                                              ; preds = %67
  %156 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %157 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %156, i32 0, i32 3
  store i32 1, i32* %157, align 4
  br label %165

158:                                              ; preds = %67
  %159 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  br label %165

161:                                              ; preds = %67
  %162 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %163 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %162, i32 0, i32 3
  store i32 1, i32* %163, align 4
  br label %165

164:                                              ; preds = %67
  br label %165

165:                                              ; preds = %164, %161, %158, %155, %154, %136, %135, %119, %101, %100, %82, %79, %76
  br label %376

166:                                              ; preds = %62
  %167 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %168 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %270

171:                                              ; preds = %166
  %172 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %173 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 4
  %176 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %177 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %175, %178
  switch i32 %179, label %268 [
    i32 1, label %180
    i32 2, label %183
    i32 3, label %186
    i32 16, label %189
    i32 18, label %205
    i32 19, label %208
    i32 32, label %224
    i32 33, label %240
    i32 35, label %243
    i32 48, label %259
    i32 49, label %262
    i32 50, label %265
  ]

180:                                              ; preds = %171
  %181 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %182 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  br label %269

183:                                              ; preds = %171
  %184 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %185 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %184, i32 0, i32 3
  store i32 1, i32* %185, align 4
  br label %269

186:                                              ; preds = %171
  %187 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %188 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %187, i32 0, i32 3
  store i32 1, i32* %188, align 4
  br label %269

189:                                              ; preds = %171
  %190 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %191 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %200 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %204

201:                                              ; preds = %194, %189
  %202 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %203 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %202, i32 0, i32 3
  store i32 2, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  br label %269

205:                                              ; preds = %171
  %206 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %207 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %206, i32 0, i32 3
  store i32 1, i32* %207, align 4
  br label %269

208:                                              ; preds = %171
  %209 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %210 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %219 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %218, i32 0, i32 3
  store i32 1, i32* %219, align 4
  br label %223

220:                                              ; preds = %213, %208
  %221 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %222 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %221, i32 0, i32 3
  store i32 2, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %269

224:                                              ; preds = %171
  %225 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %226 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %235 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %234, i32 0, i32 3
  store i32 1, i32* %235, align 4
  br label %239

236:                                              ; preds = %229, %224
  %237 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %238 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %237, i32 0, i32 3
  store i32 2, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %233
  br label %269

240:                                              ; preds = %171
  %241 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %242 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %241, i32 0, i32 3
  store i32 1, i32* %242, align 4
  br label %269

243:                                              ; preds = %171
  %244 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %245 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %254 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %253, i32 0, i32 3
  store i32 1, i32* %254, align 4
  br label %258

255:                                              ; preds = %248, %243
  %256 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %257 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %256, i32 0, i32 3
  store i32 2, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %269

259:                                              ; preds = %171
  %260 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %261 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  br label %269

262:                                              ; preds = %171
  %263 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %264 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %263, i32 0, i32 3
  store i32 1, i32* %264, align 4
  br label %269

265:                                              ; preds = %171
  %266 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %267 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %266, i32 0, i32 3
  store i32 1, i32* %267, align 4
  br label %269

268:                                              ; preds = %171
  br label %269

269:                                              ; preds = %268, %265, %262, %259, %258, %240, %239, %223, %205, %204, %186, %183, %180
  br label %375

270:                                              ; preds = %166
  %271 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %272 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %374

275:                                              ; preds = %270
  %276 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %277 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 4
  %280 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %281 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %279, %282
  switch i32 %283, label %372 [
    i32 1, label %284
    i32 2, label %287
    i32 3, label %290
    i32 16, label %293
    i32 18, label %309
    i32 19, label %312
    i32 32, label %328
    i32 33, label %344
    i32 35, label %347
    i32 48, label %363
    i32 49, label %366
    i32 50, label %369
  ]

284:                                              ; preds = %275
  %285 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %286 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %285, i32 0, i32 3
  store i32 1, i32* %286, align 4
  br label %373

287:                                              ; preds = %275
  %288 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %289 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %288, i32 0, i32 3
  store i32 57, i32* %289, align 4
  br label %373

290:                                              ; preds = %275
  %291 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %292 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %291, i32 0, i32 3
  store i32 1, i32* %292, align 4
  br label %373

293:                                              ; preds = %275
  %294 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %295 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %293
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %298
  %303 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %304 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %303, i32 0, i32 3
  store i32 63, i32* %304, align 4
  br label %308

305:                                              ; preds = %298, %293
  %306 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %307 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %306, i32 0, i32 3
  store i32 1, i32* %307, align 4
  br label %308

308:                                              ; preds = %305, %302
  br label %373

309:                                              ; preds = %275
  %310 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %311 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %310, i32 0, i32 3
  store i32 57, i32* %311, align 4
  br label %373

312:                                              ; preds = %275
  %313 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %314 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %312
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %323 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %322, i32 0, i32 3
  store i32 63, i32* %323, align 4
  br label %327

324:                                              ; preds = %317, %312
  %325 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %326 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %325, i32 0, i32 3
  store i32 1, i32* %326, align 4
  br label %327

327:                                              ; preds = %324, %321
  br label %373

328:                                              ; preds = %275
  %329 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %330 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %328
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %339 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %338, i32 0, i32 3
  store i32 63, i32* %339, align 4
  br label %343

340:                                              ; preds = %333, %328
  %341 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %342 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %341, i32 0, i32 3
  store i32 4, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %337
  br label %373

344:                                              ; preds = %275
  %345 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %346 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %345, i32 0, i32 3
  store i32 6, i32* %346, align 4
  br label %373

347:                                              ; preds = %275
  %348 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %349 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load i32, i32* %6, align 4
  %354 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %355 = icmp sgt i32 %353, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %352
  %357 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %358 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %357, i32 0, i32 3
  store i32 63, i32* %358, align 4
  br label %362

359:                                              ; preds = %352, %347
  %360 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %361 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %360, i32 0, i32 3
  store i32 6, i32* %361, align 4
  br label %362

362:                                              ; preds = %359, %356
  br label %373

363:                                              ; preds = %275
  %364 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %365 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %364, i32 0, i32 3
  store i32 1, i32* %365, align 4
  br label %373

366:                                              ; preds = %275
  %367 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %368 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %367, i32 0, i32 3
  store i32 6, i32* %368, align 4
  br label %373

369:                                              ; preds = %275
  %370 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %371 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %370, i32 0, i32 3
  store i32 1, i32* %371, align 4
  br label %373

372:                                              ; preds = %275
  br label %373

373:                                              ; preds = %372, %369, %366, %363, %362, %344, %343, %327, %309, %308, %290, %287, %284
  br label %374

374:                                              ; preds = %373, %270
  br label %375

375:                                              ; preds = %374, %269
  br label %376

376:                                              ; preds = %375, %165
  br label %377

377:                                              ; preds = %376, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
