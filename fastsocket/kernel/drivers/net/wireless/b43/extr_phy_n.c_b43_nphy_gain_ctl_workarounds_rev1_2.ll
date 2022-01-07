; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev1_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64 }

@__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_events = private unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 7], align 4
@__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays = private unnamed_addr constant [3 x i32] [i32 10, i32 30, i32 1], align 4
@B43_NPHY_C1_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B43_NPHY_C1_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_CLIP1_NBDWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_CLIP2_NBDWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_W1CLIP1_DWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_W1CLIP2_DWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C1_CCK_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C1_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C2_CCK_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C2_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_CCK_SHIFTB_REF = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_C1_INITGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C1_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN_CCKDGECV = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_gain_ctl_workarounds_rev1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_gain_ctl_workarounds_rev1_2(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %12, align 8
  store %struct.b43_phy_n* %13, %struct.b43_phy_n** %3, align 8
  %14 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_events to i8*), i64 12, i1 false)
  %15 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays to i8*), i64 12, i1 false)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_NPHY_C1_CGAINI, align 4
  %18 = load i32, i32* @B43_NPHY_C1_CGAINI_CL2DETECT, align 4
  %19 = call i32 @b43_phy_set(%struct.b43_wldev* %16, i32 %17, i32 %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_NPHY_C2_CGAINI, align 4
  %22 = load i32, i32* @B43_NPHY_C2_CGAINI_CL2DETECT, align 4
  %23 = call i32 @b43_phy_set(%struct.b43_wldev* %20, i32 %21, i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_NPHY_C1_NBCLIPTHRES, align 4
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 %25, i32 132)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_NPHY_C2_NBCLIPTHRES, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 %28, i32 132)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %1
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_NPHY_CLIP1_NBDWELL_LEN, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 43)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_NPHY_CLIP2_NBDWELL_LEN, align 4
  %41 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 %40, i32 43)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_NPHY_W1CLIP1_DWELL_LEN, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 9)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_NPHY_W1CLIP2_DWELL_LEN, align 4
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 9)
  br label %48

48:                                               ; preds = %35, %1
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES, align 4
  %51 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES_CLIP2, align 4
  %52 = xor i32 %51, -1
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %49, i32 %50, i32 %52, i32 21)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES, align 4
  %56 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES_CLIP2, align 4
  %57 = xor i32 %56, -1
  %58 = call i32 @b43_phy_maskset(%struct.b43_wldev* %54, i32 %55, i32 %57, i32 21)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %48
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = load i32, i32* @B43_NPHY_C1_CGAINI, align 4
  %67 = load i32, i32* @B43_NPHY_C1_CGAINI_GAINBKOFF, align 4
  %68 = xor i32 %67, -1
  %69 = call i32 @b43_phy_maskset(%struct.b43_wldev* %65, i32 %66, i32 %68, i32 1)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_NPHY_C2_CGAINI, align 4
  %72 = load i32, i32* @B43_NPHY_C2_CGAINI_GAINBKOFF, align 4
  %73 = xor i32 %72, -1
  %74 = call i32 @b43_phy_maskset(%struct.b43_wldev* %70, i32 %71, i32 %73, i32 1)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NPHY_C1_CCK_CGAINI, align 4
  %77 = load i32, i32* @B43_NPHY_C1_CCK_CGAINI_GAINBKOFF, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 %78, i32 1)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B43_NPHY_C2_CCK_CGAINI, align 4
  %82 = load i32, i32* @B43_NPHY_C2_CCK_CGAINI_GAINBKOFF, align 4
  %83 = xor i32 %82, -1
  %84 = call i32 @b43_phy_maskset(%struct.b43_wldev* %80, i32 %81, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %64, %48
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_NPHY_CCK_SHIFTB_REF, align 4
  %88 = call i32 @b43_phy_write(%struct.b43_wldev* %86, i32 %87, i32 32924)
  %89 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @b43_current_band(i32 %96)
  %98 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 4, i32* %6, align 4
  br label %108

107:                                              ; preds = %100, %93
  store i32 5, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %106
  br label %117

109:                                              ; preds = %85
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 6, i32 7
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %109, %108
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B43_NPHY_C1_INITGAIN, align 4
  %120 = load i32, i32* @B43_NPHY_C1_INITGAIN_HPVGA2, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = call i32 @b43_phy_maskset(%struct.b43_wldev* %118, i32 %119, i32 %121, i32 %124)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B43_NPHY_C2_INITGAIN, align 4
  %128 = load i32, i32* @B43_NPHY_C2_INITGAIN_HPVGA2, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = call i32 @b43_phy_maskset(%struct.b43_wldev* %126, i32 %127, i32 %129, i32 %132)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %136 = call i32 @b43_phy_write(%struct.b43_wldev* %134, i32 %135, i32 7430)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %147, %117
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %144, 124
  %146 = call i32 @b43_phy_write(%struct.b43_wldev* %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %137

150:                                              ; preds = %137
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = call i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev* %151)
  %153 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %154 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %205

157:                                              ; preds = %150
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %159 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %160 = call i32 @b43_phy_write(%struct.b43_wldev* %158, i32 %159, i32 2056)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %163 = call i32 @b43_phy_write(%struct.b43_wldev* %161, i32 %162, i32 0)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %166 = call i32 @b43_phy_write(%struct.b43_wldev* %164, i32 %165, i32 1)
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %168 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %169 = call i32 @b43_phy_write(%struct.b43_wldev* %167, i32 %168, i32 1)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %172 = call i32 @b43_phy_write(%struct.b43_wldev* %170, i32 %171, i32 1)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %174 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %175 = call i32 @b43_phy_write(%struct.b43_wldev* %173, i32 %174, i32 3080)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %178 = call i32 @b43_phy_write(%struct.b43_wldev* %176, i32 %177, i32 0)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %181 = call i32 @b43_phy_write(%struct.b43_wldev* %179, i32 %180, i32 1)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %184 = call i32 @b43_phy_write(%struct.b43_wldev* %182, i32 %183, i32 1)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %187 = call i32 @b43_phy_write(%struct.b43_wldev* %185, i32 %186, i32 1)
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %189 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %190 = call i32 @b43_phy_write(%struct.b43_wldev* %188, i32 %189, i32 7430)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %201, %157
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %197 = load i32, i32* %6, align 4
  %198 = shl i32 %197, 8
  %199 = or i32 %198, 116
  %200 = call i32 @b43_phy_write(%struct.b43_wldev* %195, i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %191

204:                                              ; preds = %191
  br label %205

205:                                              ; preds = %204, %150
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %244

211:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %240, %211
  %213 = load i32, i32* %4, align 4
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %243

215:                                              ; preds = %212
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %218 = load i32, i32* %4, align 4
  %219 = mul nsw i32 1024, %218
  %220 = add nsw i32 %219, 32
  %221 = call i32 @b43_phy_write(%struct.b43_wldev* %216, i32 %217, i32 %220)
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %236, %215
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %223, 21
  br i1 %224, label %225, label %239

225:                                              ; preds = %222
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp slt i32 %227, 2
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 3, i32 1
  %231 = mul nsw i32 %226, %230
  store i32 %231, i32* %7, align 4
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @b43_phy_write(%struct.b43_wldev* %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %225
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %222

239:                                              ; preds = %222
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %212

243:                                              ; preds = %212
  br label %244

244:                                              ; preds = %243, %205
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %248 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %245, i32 5, i32* %246, i32* %247, i32 3)
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = load i32, i32* @B43_NPHY_OVER_DGAIN1, align 4
  %251 = load i32, i32* @B43_NPHY_OVER_DGAIN_CCKDGECV, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %252, 65535
  %254 = load i32, i32* @B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT, align 4
  %255 = shl i32 90, %254
  %256 = call i32 @b43_phy_maskset(%struct.b43_wldev* %249, i32 %250, i32 %253, i32 %255)
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %258 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @b43_current_band(i32 %259)
  %261 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %244
  %264 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %265 = call i32 @B43_PHY_N(i32 3165)
  %266 = call i32 @b43_phy_maskset(%struct.b43_wldev* %264, i32 %265, i32 65408, i32 4)
  br label %267

267:                                              ; preds = %263, %244
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @B43_PHY_N(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
