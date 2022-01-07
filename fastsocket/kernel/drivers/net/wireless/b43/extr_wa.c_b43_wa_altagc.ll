; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_altagc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_altagc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_OFDMTAB_AGC1_R1 = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC2 = common dso_local global i32 0, align 4
@B43_PHY_LMS = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC1 = common dso_local global i32 0, align 4
@B43_PHY_CCKSHIFTBITS_WA = common dso_local global i32 0, align 4
@B43_PHY_ANTWRSETT = common dso_local global i32 0, align 4
@B43_PHY_N1P1GAIN = common dso_local global i32 0, align 4
@B43_PHY_P1P2GAIN = common dso_local global i32 0, align 4
@B43_PHY_N1N2GAIN = common dso_local global i32 0, align 4
@B43_PHY_PEAK_COUNT = common dso_local global i32 0, align 4
@B43_PHY_LPFGAINCTL = common dso_local global i32 0, align 4
@B43_PHY_DIVSRCHIDX = common dso_local global i32 0, align 4
@B43_PHY_DIVP1P2GAIN = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC3_R1 = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC3 = common dso_local global i32 0, align 4
@B43_PHY_VERSION_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_altagc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_altagc(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_OFDMTAB_AGC1_R1, align 4
  %13 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %11, i32 %12, i32 0, i32 254)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B43_OFDMTAB_AGC1_R1, align 4
  %16 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %14, i32 %15, i32 1, i32 13)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_OFDMTAB_AGC1_R1, align 4
  %19 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %17, i32 %18, i32 2, i32 19)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_OFDMTAB_AGC1_R1, align 4
  %22 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %20, i32 %21, i32 3, i32 25)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %25 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %23, i32 %24, i32 0, i32 10000)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %28 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %26, i32 %27, i32 1, i32 39811)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %31 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %29, i32 %30, i32 2, i32 39811)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %34 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %32, i32 %33, i32 3, i32 3981)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B43_PHY_LMS, align 4
  %37 = call i32 @b43_phy_write(%struct.b43_wldev* %35, i32 %36, i32 4)
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %41 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %39, i32 %40, i32 0, i32 254)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %44 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %42, i32 %43, i32 1, i32 13)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %47 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %45, i32 %46, i32 2, i32 19)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %50 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %48, i32 %49, i32 3, i32 25)
  br label %51

51:                                               ; preds = %38, %10
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_PHY_CCKSHIFTBITS_WA, align 4
  %54 = call i32 @b43_phy_maskset(%struct.b43_wldev* %52, i32 %53, i32 255, i32 22272)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @B43_PHY_OFDM(i32 26)
  %57 = call i32 @b43_phy_maskset(%struct.b43_wldev* %55, i32 %56, i32 -128, i32 15)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @B43_PHY_OFDM(i32 26)
  %60 = call i32 @b43_phy_maskset(%struct.b43_wldev* %58, i32 %59, i32 -16257, i32 11136)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %63 = call i32 @b43_phy_maskset(%struct.b43_wldev* %61, i32 %62, i32 61695, i32 768)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_radio_set(%struct.b43_wldev* %64, i32 122, i32 8)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_PHY_N1P1GAIN, align 4
  %68 = call i32 @b43_phy_maskset(%struct.b43_wldev* %66, i32 %67, i32 -16, i32 8)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_PHY_P1P2GAIN, align 4
  %71 = call i32 @b43_phy_maskset(%struct.b43_wldev* %69, i32 %70, i32 -3841, i32 1536)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_PHY_N1N2GAIN, align 4
  %74 = call i32 @b43_phy_maskset(%struct.b43_wldev* %72, i32 %73, i32 -3841, i32 1792)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_PHY_N1P1GAIN, align 4
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 -3841, i32 256)
  %78 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %79 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %51
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_PHY_N1N2GAIN, align 4
  %85 = call i32 @b43_phy_maskset(%struct.b43_wldev* %83, i32 %84, i32 -16, i32 7)
  br label %86

86:                                               ; preds = %82, %51
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = call i32 @B43_PHY_OFDM(i32 136)
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 -256, i32 28)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = call i32 @B43_PHY_OFDM(i32 136)
  %92 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 -16129, i32 512)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @B43_PHY_OFDM(i32 150)
  %95 = call i32 @b43_phy_maskset(%struct.b43_wldev* %93, i32 %94, i32 -256, i32 28)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = call i32 @B43_PHY_OFDM(i32 137)
  %98 = call i32 @b43_phy_maskset(%struct.b43_wldev* %96, i32 %97, i32 -256, i32 32)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = call i32 @B43_PHY_OFDM(i32 137)
  %101 = call i32 @b43_phy_maskset(%struct.b43_wldev* %99, i32 %100, i32 -16129, i32 512)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = call i32 @B43_PHY_OFDM(i32 130)
  %104 = call i32 @b43_phy_maskset(%struct.b43_wldev* %102, i32 %103, i32 -256, i32 46)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = call i32 @B43_PHY_OFDM(i32 150)
  %107 = call i32 @b43_phy_maskset(%struct.b43_wldev* %105, i32 %106, i32 255, i32 6656)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = call i32 @B43_PHY_OFDM(i32 129)
  %110 = call i32 @b43_phy_maskset(%struct.b43_wldev* %108, i32 %109, i32 -256, i32 40)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = call i32 @B43_PHY_OFDM(i32 129)
  %113 = call i32 @b43_phy_maskset(%struct.b43_wldev* %111, i32 %112, i32 255, i32 11264)
  %114 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %115 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %125

118:                                              ; preds = %86
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %120 = load i32, i32* @B43_PHY_PEAK_COUNT, align 4
  %121 = call i32 @b43_phy_write(%struct.b43_wldev* %119, i32 %120, i32 2347)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = call i32 @B43_PHY_OFDM(i32 27)
  %124 = call i32 @b43_phy_maskset(%struct.b43_wldev* %122, i32 %123, i32 -31, i32 2)
  br label %147

125:                                              ; preds = %86
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @B43_PHY_OFDM(i32 27)
  %128 = call i32 @b43_phy_mask(%struct.b43_wldev* %126, i32 %127, i32 -31)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = call i32 @B43_PHY_OFDM(i32 31)
  %131 = call i32 @b43_phy_write(%struct.b43_wldev* %129, i32 %130, i32 10362)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B43_PHY_LPFGAINCTL, align 4
  %134 = call i32 @b43_phy_maskset(%struct.b43_wldev* %132, i32 %133, i32 -16, i32 4)
  %135 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %136 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %137, 6
  br i1 %138, label %139, label %146

139:                                              ; preds = %125
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = call i32 @B43_PHY_OFDM(i32 34)
  %142 = call i32 @b43_phy_write(%struct.b43_wldev* %140, i32 %141, i32 10362)
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = load i32, i32* @B43_PHY_LPFGAINCTL, align 4
  %145 = call i32 @b43_phy_maskset(%struct.b43_wldev* %143, i32 %144, i32 4095, i32 12288)
  br label %146

146:                                              ; preds = %139, %125
  br label %147

147:                                              ; preds = %146, %118
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = load i32, i32* @B43_PHY_DIVSRCHIDX, align 4
  %150 = call i32 @b43_phy_maskset(%struct.b43_wldev* %148, i32 %149, i32 32896, i32 30836)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = call i32 @B43_PHY_OFDM(i32 142)
  %153 = call i32 @b43_phy_write(%struct.b43_wldev* %151, i32 %152, i32 7168)
  %154 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %155 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %183

158:                                              ; preds = %147
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* @B43_PHY_DIVP1P2GAIN, align 4
  %161 = call i32 @b43_phy_maskset(%struct.b43_wldev* %159, i32 %160, i32 -3841, i32 1536)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = call i32 @B43_PHY_OFDM(i32 139)
  %164 = call i32 @b43_phy_write(%struct.b43_wldev* %162, i32 %163, i32 94)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %167 = call i32 @b43_phy_maskset(%struct.b43_wldev* %165, i32 %166, i32 -256, i32 30)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @B43_PHY_OFDM(i32 141)
  %170 = call i32 @b43_phy_write(%struct.b43_wldev* %168, i32 %169, i32 2)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = load i32, i32* @B43_OFDMTAB_AGC3_R1, align 4
  %173 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %171, i32 %172, i32 0, i32 0)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* @B43_OFDMTAB_AGC3_R1, align 4
  %176 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %174, i32 %175, i32 1, i32 7)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = load i32, i32* @B43_OFDMTAB_AGC3_R1, align 4
  %179 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %177, i32 %178, i32 2, i32 16)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @B43_OFDMTAB_AGC3_R1, align 4
  %182 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %180, i32 %181, i32 3, i32 28)
  br label %196

183:                                              ; preds = %147
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* @B43_OFDMTAB_AGC3, align 4
  %186 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %184, i32 %185, i32 0, i32 0)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = load i32, i32* @B43_OFDMTAB_AGC3, align 4
  %189 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %187, i32 %188, i32 1, i32 7)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load i32, i32* @B43_OFDMTAB_AGC3, align 4
  %192 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %190, i32 %191, i32 2, i32 16)
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = load i32, i32* @B43_OFDMTAB_AGC3, align 4
  %195 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %193, i32 %194, i32 3, i32 28)
  br label %196

196:                                              ; preds = %183, %158
  %197 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %198 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp sge i32 %199, 6
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = call i32 @B43_PHY_OFDM(i32 38)
  %204 = call i32 @b43_phy_mask(%struct.b43_wldev* %202, i32 %203, i32 -4)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = call i32 @B43_PHY_OFDM(i32 38)
  %207 = call i32 @b43_phy_mask(%struct.b43_wldev* %205, i32 %206, i32 -4097)
  br label %208

208:                                              ; preds = %201, %196
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = load i32, i32* @B43_PHY_VERSION_OFDM, align 4
  %211 = call i32 @b43_phy_read(%struct.b43_wldev* %209, i32 %210)
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
