; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_iqcal_gainparams_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_iqcal_gainparams_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }
%struct.nphy_iqcal_params = type { i32, i32, i32, i32, i32, i32, i32* }

@NPHY_IQCAL_NUMGAINS = common dso_local global i64 0, align 8
@tbl_iqcal_gainparams_nphy = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64, %struct.nphy_txgains*, %struct.nphy_iqcal_params*)* @wlc_phy_iqcal_gainparams_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_iqcal_gainparams_nphy(%struct.brcms_phy* %0, i64 %1, %struct.nphy_txgains* byval(%struct.nphy_txgains) align 8 %2, %struct.nphy_iqcal_params* %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nphy_iqcal_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nphy_iqcal_params* %3, %struct.nphy_iqcal_params** %7, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @CHSPEC_IS5G(i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @NREV_GE(i32 %23, i32 3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %144

26:                                               ; preds = %4
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @NREV_GE(i32 %30, i32 7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %40 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %33, %26
  %42 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %48 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %55 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %62 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %69 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @NREV_GE(i32 %73, i32 7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %41
  %77 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %78 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 15
  %81 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %82 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 12
  %85 = or i32 %80, %84
  %86 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %87 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 8
  %90 = or i32 %85, %89
  %91 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %92 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 3
  %95 = or i32 %90, %94
  %96 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %97 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  %100 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %101 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %123

102:                                              ; preds = %41
  %103 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %104 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 12
  %107 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %108 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 8
  %111 = or i32 %106, %110
  %112 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %113 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 4
  %116 = or i32 %111, %115
  %117 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %118 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %116, %119
  %121 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %122 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %102, %76
  %124 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %125 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 121, i32* %127, align 4
  %128 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %129 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 121, i32* %131, align 4
  %132 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %133 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 121, i32* %135, align 4
  %136 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %137 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 121, i32* %139, align 4
  %140 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %141 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %140, i32 0, i32 6
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32 121, i32* %143, align 4
  br label %298

144:                                              ; preds = %4
  %145 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 0
  %151 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 4
  %157 = or i32 %150, %156
  %158 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 8
  %164 = or i32 %157, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %10, align 8
  store i32 -1, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %166

166:                                              ; preds = %186, %144
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* @NPHY_IQCAL_NUMGAINS, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds i64**, i64*** %171, i64 %172
  %174 = load i64**, i64*** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds i64*, i64** %174, i64 %175
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  br label %189

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %8, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %8, align 8
  br label %166

189:                                              ; preds = %182, %166
  %190 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %191 = load i64, i64* %11, align 8
  %192 = getelementptr inbounds i64**, i64*** %190, i64 %191
  %193 = load i64**, i64*** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds i64*, i64** %193, i64 %194
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 1
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %201 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %203 = load i64, i64* %11, align 8
  %204 = getelementptr inbounds i64**, i64*** %202, i64 %203
  %205 = load i64**, i64*** %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds i64*, i64** %205, i64 %206
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %213 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %215 = load i64, i64* %11, align 8
  %216 = getelementptr inbounds i64**, i64*** %214, i64 %215
  %217 = load i64**, i64*** %216, align 8
  %218 = load i64, i64* %8, align 8
  %219 = getelementptr inbounds i64*, i64** %217, i64 %218
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 3
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %225 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %227 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 7
  %230 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %231 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = shl i32 %232, 4
  %234 = or i32 %229, %233
  %235 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %236 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 2
  %239 = or i32 %234, %238
  %240 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %241 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  %242 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %243 = load i64, i64* %11, align 8
  %244 = getelementptr inbounds i64**, i64*** %242, i64 %243
  %245 = load i64**, i64*** %244, align 8
  %246 = load i64, i64* %8, align 8
  %247 = getelementptr inbounds i64*, i64** %245, i64 %246
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 4
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %253 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  store i32 %251, i32* %255, align 4
  %256 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %257 = load i64, i64* %11, align 8
  %258 = getelementptr inbounds i64**, i64*** %256, i64 %257
  %259 = load i64**, i64*** %258, align 8
  %260 = load i64, i64* %8, align 8
  %261 = getelementptr inbounds i64*, i64** %259, i64 %260
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 5
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %267 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 %265, i32* %269, align 4
  %270 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %271 = load i64, i64* %11, align 8
  %272 = getelementptr inbounds i64**, i64*** %270, i64 %271
  %273 = load i64**, i64*** %272, align 8
  %274 = load i64, i64* %8, align 8
  %275 = getelementptr inbounds i64*, i64** %273, i64 %274
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 6
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %281 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %280, i32 0, i32 6
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  store i32 %279, i32* %283, align 4
  %284 = load i64***, i64**** @tbl_iqcal_gainparams_nphy, align 8
  %285 = load i64, i64* %11, align 8
  %286 = getelementptr inbounds i64**, i64*** %284, i64 %285
  %287 = load i64**, i64*** %286, align 8
  %288 = load i64, i64* %8, align 8
  %289 = getelementptr inbounds i64*, i64** %287, i64 %288
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 7
  %292 = load i64, i64* %291, align 8
  %293 = trunc i64 %292 to i32
  %294 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %295 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  store i32 %293, i32* %297, align 4
  br label %298

298:                                              ; preds = %189, %123
  ret void
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
