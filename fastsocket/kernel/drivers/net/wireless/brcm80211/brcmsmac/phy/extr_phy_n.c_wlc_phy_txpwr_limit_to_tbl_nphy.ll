; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_limit_to_tbl_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_limit_to_tbl_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, i32*, i32 }

@TXP_FIRST_CCK = common dso_local global i64 0, align 8
@TXP_LAST_CCK = common dso_local global i64 0, align 8
@NPHY_IS_SROM_REINTERPRET = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_40_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_OFDM_40_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_OFDM = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_STBC = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_STBC = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_SDM = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_SDM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txpwr_limit_to_tbl_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpwr_limit_to_tbl_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %7 = load i64, i64* @TXP_FIRST_CCK, align 8
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TXP_LAST_CCK, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %23, align 4
  br label %24

24:                                               ; preds = %12
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %8

27:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %427, %27
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %430

31:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  switch i64 %32, label %93 [
    i64 0, label %33
    i64 1, label %57
    i64 2, label %69
    i64 3, label %81
  ]

33:                                               ; preds = %31
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @CHSPEC_IS40(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @NPHY_IS_SROM_REINTERPRET, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @TXP_FIRST_MCS_40_SISO, align 8
  store i64 %43, i64* %3, align 8
  br label %56

44:                                               ; preds = %39, %33
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CHSPEC_IS40(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @TXP_FIRST_OFDM_40_SISO, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @TXP_FIRST_OFDM, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %3, align 8
  store i64 1, i64* %6, align 8
  br label %56

56:                                               ; preds = %54, %42
  br label %93

57:                                               ; preds = %31
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @CHSPEC_IS40(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  store i64 %68, i64* %3, align 8
  br label %93

69:                                               ; preds = %31
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @CHSPEC_IS40(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* @TXP_FIRST_MCS_40_STBC, align 8
  br label %79

77:                                               ; preds = %69
  %78 = load i64, i64* @TXP_FIRST_MCS_20_STBC, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  store i64 %80, i64* %3, align 8
  br label %93

81:                                               ; preds = %31
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @CHSPEC_IS40(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @TXP_FIRST_MCS_40_SDM, align 8
  br label %91

89:                                               ; preds = %81
  %90 = load i64, i64* @TXP_FIRST_MCS_20_SDM, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %31, %91, %79, %67, %56
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %4, align 8
  %105 = mul i64 4, %103
  %106 = add i64 4, %105
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  store i32 %99, i32* %109, align 4
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %110, %111
  store i64 %112, i64* %3, align 8
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %4, align 8
  %124 = mul i64 4, %122
  %125 = add i64 4, %124
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %125, %126
  %128 = getelementptr inbounds i32, i32* %121, i64 %127
  store i32 %118, i32* %128, align 4
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %3, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %4, align 8
  %140 = mul i64 4, %138
  %141 = add i64 4, %140
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %141, %142
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  store i32 %134, i32* %144, align 4
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %146 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %3, align 8
  %150 = getelementptr inbounds i32, i32* %147, i64 %148
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %4, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %4, align 8
  %157 = mul i64 4, %155
  %158 = add i64 4, %157
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %158, %159
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  store i32 %151, i32* %161, align 4
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %3, align 8
  %167 = getelementptr inbounds i32, i32* %164, i64 %165
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %4, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %4, align 8
  %174 = mul i64 4, %172
  %175 = add i64 4, %174
  %176 = load i64, i64* %5, align 8
  %177 = add i64 %175, %176
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  store i32 %168, i32* %178, align 4
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %180 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %3, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %4, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %4, align 8
  %190 = mul i64 4, %188
  %191 = add i64 4, %190
  %192 = load i64, i64* %5, align 8
  %193 = add i64 %191, %192
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  store i32 %184, i32* %194, align 4
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %196 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %3, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* %4, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %4, align 8
  %206 = mul i64 4, %204
  %207 = add i64 4, %206
  %208 = load i64, i64* %5, align 8
  %209 = add i64 %207, %208
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  store i32 %200, i32* %210, align 4
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %212 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %3, align 8
  %216 = getelementptr inbounds i32, i32* %213, i64 %214
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %219 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %4, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %4, align 8
  %223 = mul i64 4, %221
  %224 = add i64 4, %223
  %225 = load i64, i64* %5, align 8
  %226 = add i64 %224, %225
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  store i32 %217, i32* %227, align 4
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %229 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %3, align 8
  %233 = getelementptr inbounds i32, i32* %230, i64 %231
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* %4, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %4, align 8
  %240 = mul i64 4, %238
  %241 = add i64 4, %240
  %242 = load i64, i64* %5, align 8
  %243 = add i64 %241, %242
  %244 = getelementptr inbounds i32, i32* %237, i64 %243
  store i32 %234, i32* %244, align 4
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %3, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %252 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %4, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %4, align 8
  %256 = mul i64 4, %254
  %257 = add i64 4, %256
  %258 = load i64, i64* %5, align 8
  %259 = add i64 %257, %258
  %260 = getelementptr inbounds i32, i32* %253, i64 %259
  store i32 %250, i32* %260, align 4
  %261 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %262 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* %3, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %268 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* %4, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %4, align 8
  %272 = mul i64 4, %270
  %273 = add i64 4, %272
  %274 = load i64, i64* %5, align 8
  %275 = add i64 %273, %274
  %276 = getelementptr inbounds i32, i32* %269, i64 %275
  store i32 %266, i32* %276, align 4
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %3, align 8
  %282 = getelementptr inbounds i32, i32* %279, i64 %280
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %285 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* %4, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %4, align 8
  %289 = mul i64 4, %287
  %290 = add i64 4, %289
  %291 = load i64, i64* %5, align 8
  %292 = add i64 %290, %291
  %293 = getelementptr inbounds i32, i32* %286, i64 %292
  store i32 %283, i32* %293, align 4
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %295 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* %3, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %301 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i64, i64* %4, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %4, align 8
  %305 = mul i64 4, %303
  %306 = add i64 4, %305
  %307 = load i64, i64* %5, align 8
  %308 = add i64 %306, %307
  %309 = getelementptr inbounds i32, i32* %302, i64 %308
  store i32 %299, i32* %309, align 4
  %310 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %311 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %3, align 8
  %315 = getelementptr inbounds i32, i32* %312, i64 %313
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %318 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i64, i64* %4, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %4, align 8
  %322 = mul i64 4, %320
  %323 = add i64 4, %322
  %324 = load i64, i64* %5, align 8
  %325 = add i64 %323, %324
  %326 = getelementptr inbounds i32, i32* %319, i64 %325
  store i32 %316, i32* %326, align 4
  %327 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %328 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* %3, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %334 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* %4, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %4, align 8
  %338 = mul i64 4, %336
  %339 = add i64 4, %338
  %340 = load i64, i64* %5, align 8
  %341 = add i64 %339, %340
  %342 = getelementptr inbounds i32, i32* %335, i64 %341
  store i32 %332, i32* %342, align 4
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 1
  %345 = load i64, i64* %6, align 8
  %346 = sub i64 %344, %345
  store i64 %346, i64* %3, align 8
  %347 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %348 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* %3, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %354 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* %4, align 8
  %357 = add i64 %356, 1
  store i64 %357, i64* %4, align 8
  %358 = mul i64 4, %356
  %359 = add i64 4, %358
  %360 = load i64, i64* %5, align 8
  %361 = add i64 %359, %360
  %362 = getelementptr inbounds i32, i32* %355, i64 %361
  store i32 %352, i32* %362, align 4
  %363 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %364 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load i64, i64* %3, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %370 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load i64, i64* %4, align 8
  %373 = add i64 %372, 1
  store i64 %373, i64* %4, align 8
  %374 = mul i64 4, %372
  %375 = add i64 4, %374
  %376 = load i64, i64* %5, align 8
  %377 = add i64 %375, %376
  %378 = getelementptr inbounds i32, i32* %371, i64 %377
  store i32 %368, i32* %378, align 4
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %380 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* %3, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %386 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* %4, align 8
  %389 = add i64 %388, 1
  store i64 %389, i64* %4, align 8
  %390 = mul i64 4, %388
  %391 = add i64 4, %390
  %392 = load i64, i64* %5, align 8
  %393 = add i64 %391, %392
  %394 = getelementptr inbounds i32, i32* %387, i64 %393
  store i32 %384, i32* %394, align 4
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %396 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* %3, align 8
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %402 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = load i64, i64* %4, align 8
  %405 = add i64 %404, 1
  store i64 %405, i64* %4, align 8
  %406 = mul i64 4, %404
  %407 = add i64 4, %406
  %408 = load i64, i64* %5, align 8
  %409 = add i64 %407, %408
  %410 = getelementptr inbounds i32, i32* %403, i64 %409
  store i32 %400, i32* %410, align 4
  %411 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %412 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i64, i64* %3, align 8
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %418 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* %4, align 8
  %421 = add i64 %420, 1
  store i64 %421, i64* %4, align 8
  %422 = mul i64 4, %420
  %423 = add i64 4, %422
  %424 = load i64, i64* %5, align 8
  %425 = add i64 %423, %424
  %426 = getelementptr inbounds i32, i32* %419, i64 %425
  store i32 %416, i32* %426, align 4
  br label %427

427:                                              ; preds = %93
  %428 = load i64, i64* %5, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %5, align 8
  br label %28

430:                                              ; preds = %28
  ret void
}

declare dso_local i32 @CHSPEC_IS40(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
