; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_physetup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_physetup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32, i8** }
%struct.TYPE_2__ = type { i32 }

@PHY_CORE_0 = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_PA = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_TRSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_phy_rxcal_physetup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_physetup_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @NREV_GE(i32 %11, i32 7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PHY_CORE_0, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = call i8* @read_phy_reg(%struct.brcms_phy* %23, i32 162)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %24, i8** %28, align 8
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PHY_CORE_0, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 166, i32 167
  %35 = call i8* @read_phy_reg(%struct.brcms_phy* %29, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %35, i8** %39, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PHY_CORE_0, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 143, i32 165
  %46 = call i8* @read_phy_reg(%struct.brcms_phy* %40, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8* %46, i8** %50, align 8
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = call i8* @read_phy_reg(%struct.brcms_phy* %51, i32 145)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 3
  store i8* %52, i8** %56, align 8
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = call i8* @read_phy_reg(%struct.brcms_phy* %57, i32 146)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 4
  store i8* %58, i8** %62, align 8
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = call i8* @read_phy_reg(%struct.brcms_phy* %63, i32 122)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 5
  store i8* %64, i8** %68, align 8
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %70 = call i8* @read_phy_reg(%struct.brcms_phy* %69, i32 125)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 6
  store i8* %70, i8** %74, align 8
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = call i8* @read_phy_reg(%struct.brcms_phy* %75, i32 231)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 7
  store i8* %76, i8** %80, align 8
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = call i8* @read_phy_reg(%struct.brcms_phy* %81, i32 236)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %84 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 8
  store i8* %82, i8** %86, align 8
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @NREV_GE(i32 %90, i32 7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %22
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = call i8* @read_phy_reg(%struct.brcms_phy* %94, i32 834)
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 2
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 11
  store i8* %95, i8** %99, align 8
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = call i8* @read_phy_reg(%struct.brcms_phy* %100, i32 835)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 12
  store i8* %101, i8** %105, align 8
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = call i8* @read_phy_reg(%struct.brcms_phy* %106, i32 838)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 13
  store i8* %107, i8** %111, align 8
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = call i8* @read_phy_reg(%struct.brcms_phy* %112, i32 839)
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 14
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %93, %22
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %120 = call i8* @read_phy_reg(%struct.brcms_phy* %119, i32 663)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 9
  store i8* %120, i8** %124, align 8
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = call i8* @read_phy_reg(%struct.brcms_phy* %125, i32 667)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 10
  store i8* %126, i8** %130, align 8
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = load i32, i32* @PHY_CORE_0, align 4
  %133 = icmp eq i32 0, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 663, i32 667
  %136 = call i32 @mod_phy_reg(%struct.brcms_phy* %131, i32 %135, i32 1, i32 0)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %138 = load i32, i32* @PHY_CORE_0, align 4
  %139 = icmp eq i32 1, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 663, i32 667
  %142 = call i32 @mod_phy_reg(%struct.brcms_phy* %137, i32 %141, i32 1, i32 0)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @NREV_GE(i32 %146, i32 7)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %118
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = shl i32 1, %151
  %153 = shl i32 %152, 0
  %154 = call i32 @mod_phy_reg(%struct.brcms_phy* %150, i32 162, i32 15, i32 %153)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 1, %156
  %158 = shl i32 1, %157
  %159 = shl i32 %158, 12
  %160 = call i32 @mod_phy_reg(%struct.brcms_phy* %155, i32 162, i32 61440, i32 %159)
  br label %182

161:                                              ; preds = %118
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %163 = load i32, i32* %5, align 4
  %164 = shl i32 1, %163
  %165 = shl i32 %164, 12
  %166 = call i32 @mod_phy_reg(%struct.brcms_phy* %162, i32 162, i32 61440, i32 %165)
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = shl i32 1, %168
  %170 = shl i32 %169, 0
  %171 = call i32 @mod_phy_reg(%struct.brcms_phy* %167, i32 162, i32 15, i32 %170)
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = shl i32 1, %173
  %175 = shl i32 %174, 4
  %176 = call i32 @mod_phy_reg(%struct.brcms_phy* %172, i32 162, i32 240, i32 %175)
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = shl i32 1, %178
  %180 = shl i32 %179, 8
  %181 = call i32 @mod_phy_reg(%struct.brcms_phy* %177, i32 162, i32 3840, i32 %180)
  br label %182

182:                                              ; preds = %161, %149
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @PHY_CORE_0, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 166, i32 167
  %189 = call i32 @mod_phy_reg(%struct.brcms_phy* %183, i32 %188, i32 4, i32 0)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @PHY_CORE_0, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 143, i32 165
  %196 = call i32 @mod_phy_reg(%struct.brcms_phy* %190, i32 %195, i32 4, i32 4)
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %198 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @NREV_LT(i32 %200, i32 7)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %182
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @PHY_CORE_0, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 166, i32 167
  %210 = call i32 @mod_phy_reg(%struct.brcms_phy* %204, i32 %209, i32 3, i32 0)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @PHY_CORE_0, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 143, i32 165
  %217 = call i32 @mod_phy_reg(%struct.brcms_phy* %211, i32 %216, i32 3, i32 3)
  br label %218

218:                                              ; preds = %203, %182
  %219 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %220 = load i32, i32* @NPHY_RfctrlIntc_override_PA, align 4
  %221 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %222 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %219, i32 %220, i32 0, i32 %223)
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %226 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @NREV_GE(i32 %228, i32 7)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %270

231:                                              ; preds = %218
  %232 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %233 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %234 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %232, i32 8, i32 0, i32 0, i32 0, i32 %233)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %236 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %237 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %235, i32 512, i32 0, i32 0, i32 0, i32 %236)
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %239 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %240 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %238, i32 1024, i32 1, i32 0, i32 0, i32 %239)
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %242 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %243 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %241, i32 1, i32 1, i32 0, i32 0, i32 %242)
  %244 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %245 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %246 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %244, i32 2, i32 1, i32 0, i32 0, i32 %245)
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %248 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %249 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %247, i32 2048, i32 0, i32 0, i32 0, i32 %248)
  %250 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %251 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @CHSPEC_IS40(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %231
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %257 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %258 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %256, i32 128, i32 2, i32 0, i32 0, i32 %257)
  br label %263

259:                                              ; preds = %231
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %261 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %262 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %260, i32 128, i32 0, i32 0, i32 0, i32 %261)
  br label %263

263:                                              ; preds = %259, %255
  %264 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %265 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %266 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %264, i32 128, i32 0, i32 0, i32 0, i32 %265)
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %268 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %269 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %267, i32 32, i32 0, i32 0, i32 0, i32 %268)
  br label %273

270:                                              ; preds = %218
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %272 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %271, i32 8, i32 0, i32 3, i32 0)
  br label %273

273:                                              ; preds = %270, %263
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %275 = load i32, i32* @NPHY_RFSEQ_RX2TX, align 4
  %276 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %274, i32 %275)
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @NREV_GE(i32 %280, i32 7)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %273
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %285 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 %286, 1
  %288 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %284, i32 %285, i32 1, i32 %287)
  br label %308

289:                                              ; preds = %273
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* @PHY_CORE_0, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  store i32 1, i32* %6, align 4
  store i32 8, i32* %7, align 4
  br label %295

294:                                              ; preds = %289
  store i32 4, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %295

295:                                              ; preds = %294, %293
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %297 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 1
  %301 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %296, i32 %297, i32 %298, i32 %300)
  %302 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %303 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, 1
  %307 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %302, i32 %303, i32 %304, i32 %306)
  br label %308

308:                                              ; preds = %295, %283
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
