; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_select_ant_div_from_quick_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_select_ant_div_from_quick_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw_antcomb_conf = type { i8*, i8* }

@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_DELTA_HI = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1_DELTA_LOW = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_DELTA_MID = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1_PLUS_LNA2 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32)* @ath_select_ant_div_from_quick_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb* %0, %struct.ath_hw_antcomb_conf* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_ant_comb*, align 8
  %7 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %6, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %12 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %474 [
    i32 0, label %14
    i32 1, label %25
    i32 2, label %117
  ]

14:                                               ; preds = %5
  %15 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %16 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %19 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %21 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %24 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %475

25:                                               ; preds = %5
  %26 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %27 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %30 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %32 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %38 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %41 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %43 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %25
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %50 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %54 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath_is_alt_ant_ratio_better(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %60 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %59, i32 0, i32 7
  store i32 1, i32* %60, align 4
  br label %64

61:                                               ; preds = %47
  %62 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %63 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %62, i32 0, i32 7
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %116

65:                                               ; preds = %25
  %66 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %67 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %74 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %78 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ath_is_alt_ant_ratio_better(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %84 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %83, i32 0, i32 7
  store i32 1, i32* %84, align 4
  br label %88

85:                                               ; preds = %71
  %86 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %87 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %86, i32 0, i32 7
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %115

89:                                               ; preds = %65
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99, %93
  %104 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %105 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 50
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %110 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %109, i32 0, i32 7
  store i32 1, i32* %110, align 4
  br label %114

111:                                              ; preds = %103, %99
  %112 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %113 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %112, i32 0, i32 7
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %64
  br label %475

117:                                              ; preds = %5
  %118 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %119 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %118, i32 0, i32 8
  store i32 0, i32* %119, align 8
  %120 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %121 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %120, i32 0, i32 9
  store i32 0, i32* %121, align 4
  %122 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %123 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %122, i32 0, i32 10
  store i32 0, i32* %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %126 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %129 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %131 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %117
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %138 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 8
  br label %179

139:                                              ; preds = %117
  %140 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %141 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %148 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %147, i32 0, i32 13
  store i32 %146, i32* %148, align 4
  br label %178

149:                                              ; preds = %139
  %150 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %151 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1_PLUS_LNA2, align 8
  %154 = icmp eq i8* %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  %156 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %157 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %160 = icmp eq i8* %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %164 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %163, i32 0, i32 13
  store i32 %162, i32* %164, align 4
  br label %176

165:                                              ; preds = %155
  %166 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %167 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %174 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %173, i32 0, i32 12
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %165
  br label %176

176:                                              ; preds = %175, %161
  br label %177

177:                                              ; preds = %176, %149
  br label %178

178:                                              ; preds = %177, %145
  br label %179

179:                                              ; preds = %178, %135
  %180 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %181 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %184 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA, align 4
  %187 = add nsw i32 %185, %186
  %188 = icmp sgt i32 %182, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %191 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %192 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  br label %197

193:                                              ; preds = %179
  %194 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %195 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %196 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %189
  %198 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %199 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %202 = icmp eq i8* %200, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %197
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %206 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %210 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @ath_is_alt_ant_ratio_better(i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %203
  %215 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %216 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %215, i32 0, i32 14
  store i32 1, i32* %216, align 8
  br label %220

217:                                              ; preds = %203
  %218 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %219 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %218, i32 0, i32 14
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  br label %272

221:                                              ; preds = %197
  %222 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %223 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %226 = icmp eq i8* %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %230 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %234 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @ath_is_alt_ant_ratio_better(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %227
  %239 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %240 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %239, i32 0, i32 14
  store i32 1, i32* %240, align 8
  br label %244

241:                                              ; preds = %227
  %242 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %243 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %242, i32 0, i32 14
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %238
  br label %271

245:                                              ; preds = %221
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %253 = add nsw i32 %251, %252
  %254 = icmp sgt i32 %250, %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %249, %245
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %8, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %255, %249
  %260 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %261 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 50
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %266 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %265, i32 0, i32 14
  store i32 1, i32* %266, align 8
  br label %270

267:                                              ; preds = %259, %255
  %268 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %269 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %268, i32 0, i32 14
  store i32 0, i32* %269, align 8
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %244
  br label %272

272:                                              ; preds = %271, %220
  %273 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %274 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %359

277:                                              ; preds = %272
  %278 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %279 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %278, i32 0, i32 14
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %359

282:                                              ; preds = %277
  %283 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %284 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %287 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %286, i32 0, i32 11
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %285, %288
  br i1 %289, label %290, label %324

290:                                              ; preds = %282
  %291 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %292 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %295 = icmp eq i8* %293, %294
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %298 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %301 = icmp eq i8* %299, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %296, %290
  %303 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %304 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %307 = icmp eq i8* %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %310 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %311 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %310, i32 0, i32 1
  store i8* %309, i8** %311, align 8
  br label %316

312:                                              ; preds = %302
  %313 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %314 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %315 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %314, i32 0, i32 1
  store i8* %313, i8** %315, align 8
  br label %316

316:                                              ; preds = %312, %308
  br label %323

317:                                              ; preds = %296
  %318 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %319 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %318, i32 0, i32 2
  %320 = load i8*, i8** %319, align 8
  %321 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %322 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %321, i32 0, i32 1
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %317, %316
  br label %358

324:                                              ; preds = %282
  %325 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %326 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %325, i32 0, i32 3
  %327 = load i8*, i8** %326, align 8
  %328 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %329 = icmp eq i8* %327, %328
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %332 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %331, i32 0, i32 3
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %335 = icmp eq i8* %333, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %330, %324
  %337 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %338 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %341 = icmp eq i8* %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %336
  %343 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %344 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %345 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  br label %350

346:                                              ; preds = %336
  %347 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %348 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %349 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %348, i32 0, i32 1
  store i8* %347, i8** %349, align 8
  br label %350

350:                                              ; preds = %346, %342
  br label %357

351:                                              ; preds = %330
  %352 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %353 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %352, i32 0, i32 3
  %354 = load i8*, i8** %353, align 8
  %355 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %356 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %351, %350
  br label %358

358:                                              ; preds = %357, %323
  br label %473

359:                                              ; preds = %277, %272
  %360 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %361 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %360, i32 0, i32 7
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %398

364:                                              ; preds = %359
  %365 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %366 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %369 = icmp eq i8* %367, %368
  br i1 %369, label %376, label %370

370:                                              ; preds = %364
  %371 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %372 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %371, i32 0, i32 2
  %373 = load i8*, i8** %372, align 8
  %374 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %375 = icmp eq i8* %373, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %370, %364
  %377 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %378 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %377, i32 0, i32 0
  %379 = load i8*, i8** %378, align 8
  %380 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %381 = icmp eq i8* %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %376
  %383 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %384 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %385 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %384, i32 0, i32 1
  store i8* %383, i8** %385, align 8
  br label %390

386:                                              ; preds = %376
  %387 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %388 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %389 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %388, i32 0, i32 1
  store i8* %387, i8** %389, align 8
  br label %390

390:                                              ; preds = %386, %382
  br label %397

391:                                              ; preds = %370
  %392 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %393 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %392, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %396 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %395, i32 0, i32 1
  store i8* %394, i8** %396, align 8
  br label %397

397:                                              ; preds = %391, %390
  br label %472

398:                                              ; preds = %359
  %399 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %400 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %399, i32 0, i32 14
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %437

403:                                              ; preds = %398
  %404 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %405 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %404, i32 0, i32 3
  %406 = load i8*, i8** %405, align 8
  %407 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %408 = icmp eq i8* %406, %407
  br i1 %408, label %415, label %409

409:                                              ; preds = %403
  %410 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %411 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %410, i32 0, i32 3
  %412 = load i8*, i8** %411, align 8
  %413 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %414 = icmp eq i8* %412, %413
  br i1 %414, label %415, label %430

415:                                              ; preds = %409, %403
  %416 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %417 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %420 = icmp eq i8* %418, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %423 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %424 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %423, i32 0, i32 1
  store i8* %422, i8** %424, align 8
  br label %429

425:                                              ; preds = %415
  %426 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %427 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %428 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %427, i32 0, i32 1
  store i8* %426, i8** %428, align 8
  br label %429

429:                                              ; preds = %425, %421
  br label %436

430:                                              ; preds = %409
  %431 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %432 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %431, i32 0, i32 3
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %435 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %434, i32 0, i32 1
  store i8* %433, i8** %435, align 8
  br label %436

436:                                              ; preds = %430, %429
  br label %471

437:                                              ; preds = %398
  %438 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %439 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %438, i32 0, i32 1
  %440 = load i8*, i8** %439, align 8
  %441 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %442 = icmp eq i8* %440, %441
  br i1 %442, label %449, label %443

443:                                              ; preds = %437
  %444 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %445 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %448 = icmp eq i8* %446, %447
  br i1 %448, label %449, label %464

449:                                              ; preds = %443, %437
  %450 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %451 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %450, i32 0, i32 0
  %452 = load i8*, i8** %451, align 8
  %453 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %454 = icmp eq i8* %452, %453
  br i1 %454, label %455, label %459

455:                                              ; preds = %449
  %456 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  %457 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %458 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %457, i32 0, i32 1
  store i8* %456, i8** %458, align 8
  br label %463

459:                                              ; preds = %449
  %460 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  %461 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %462 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %461, i32 0, i32 1
  store i8* %460, i8** %462, align 8
  br label %463

463:                                              ; preds = %459, %455
  br label %470

464:                                              ; preds = %443
  %465 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %466 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %465, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %469 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %468, i32 0, i32 1
  store i8* %467, i8** %469, align 8
  br label %470

470:                                              ; preds = %464, %463
  br label %471

471:                                              ; preds = %470, %436
  br label %472

472:                                              ; preds = %471, %397
  br label %473

473:                                              ; preds = %472, %358
  br label %475

474:                                              ; preds = %5
  br label %475

475:                                              ; preds = %474, %473, %116, %14
  ret void
}

declare dso_local i32 @ath_is_alt_ant_ratio_better(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
