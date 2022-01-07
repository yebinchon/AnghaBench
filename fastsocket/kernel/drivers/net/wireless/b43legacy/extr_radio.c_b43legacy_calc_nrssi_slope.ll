; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_calc_nrssi_slope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_calc_nrssi_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32, i32, i32, i32*, i32, i32 }

@B43legacy_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_PHY_G_LO_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca [18 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %3, align 8
  %10 = bitcast [18 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 72, i1 false)
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %652 [
    i32 129, label %14
    i32 128, label %232
  ]

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %15, i32 122)
  %17 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %19 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %18, i32 82)
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %21, i32 67)
  %23 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %24, i32 48)
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %27, i32 38)
  %29 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %30, i32 21)
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %34 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %33, i32 42)
  %35 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 6
  store i32 %34, i32* %35, align 8
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %36, i32 32)
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 7
  store i32 %37, i32* %38, align 4
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %40 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %39, i32 90)
  %41 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 8
  store i32 %40, i32* %41, align 16
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %42, i32 89)
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 9
  store i32 %43, i32* %44, align 4
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %45, i32 88)
  %47 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 10
  store i32 %46, i32* %47, align 8
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %48, i32 994)
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 11
  store i32 %49, i32* %50, align 4
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %51, i32 998)
  %53 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 12
  store i32 %52, i32* %53, align 16
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %55 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %56 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %54, i32 %55)
  %57 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 13
  store i32 %56, i32* %57, align 4
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %59 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %58, i32 122)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %61 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 5
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 127, i32 15
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %68, i32 122, i32 %69)
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %72 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %71, i32 48, i32 255)
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %73, i32 1004, i32 32639)
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %75, i32 38, i32 0)
  %77 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %79 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %78, i32 21)
  %80 = or i32 %79, 32
  %81 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %77, i32 21, i32 %80)
  %82 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %83 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %82, i32 42, i32 2211)
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %85, i32 122)
  %87 = or i32 %86, 128
  %88 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %84, i32 122, i32 %87)
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %90 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %89, i32 39)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %92, i32 122)
  %94 = and i32 %93, 127
  %95 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %91, i32 122, i32 %94)
  %96 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %97 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 2
  br i1 %99, label %100, label %103

100:                                              ; preds = %14
  %101 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %102 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %101, i32 998, i32 64)
  br label %120

103:                                              ; preds = %14
  %104 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %105 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %109, i32 998, i32 290)
  br label %119

111:                                              ; preds = %103
  %112 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %113 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %116 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %114, i32 %115)
  %117 = and i32 %116, 8192
  %118 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %112, i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %111, %108
  br label %120

120:                                              ; preds = %119, %100
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %121, i32 32, i32 16191)
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %124 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %123, i32 21, i32 62256)
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %126 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %125, i32 90, i32 96)
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %129 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %128, i32 67)
  %130 = and i32 %129, 240
  %131 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %127, i32 67, i32 %130)
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %133 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %132, i32 90, i32 1152)
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %134, i32 89, i32 2064)
  %136 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %137 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %136, i32 88, i32 13)
  %138 = call i32 @udelay(i32 20)
  %139 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %140 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %139, i32 39)
  store i32 %140, i32* %7, align 4
  %141 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %142 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %141, i32 48, i32 %143)
  %145 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %146 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  %147 = load i32, i32* %146, align 16
  %148 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %145, i32 122, i32 %147)
  %149 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %150 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 11
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %149, i32 994, i32 %151)
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %154 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 4
  %155 = load i32, i32* %154, align 16
  %156 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %153, i32 38, i32 %155)
  %157 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %158 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %157, i32 21, i32 %159)
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %162 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 6
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %161, i32 42, i32 %163)
  %165 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %166 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %167 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @b43legacy_synth_pu_workaround(%struct.b43legacy_wldev* %165, i32 %168)
  %170 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %171 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %120
  %175 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %176 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 13
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %175, i32 1012, i32 %177)
  br label %179

179:                                              ; preds = %174, %120
  %180 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %181 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 7
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %180, i32 32, i32 %182)
  %184 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %185 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 8
  %186 = load i32, i32* %185, align 16
  %187 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %184, i32 90, i32 %186)
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %189 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 9
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %188, i32 89, i32 %190)
  %192 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %193 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 10
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %192, i32 88, i32 %194)
  %196 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %197 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %196, i32 82, i32 %198)
  %200 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %201 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %200, i32 67, i32 %202)
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %179
  %208 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %209 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %208, i32 0, i32 3
  store i32 65536, i32* %209, align 4
  br label %217

210:                                              ; preds = %179
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sdiv i32 4194304, %213
  %215 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %216 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %210, %207
  %218 = load i32, i32* %6, align 4
  %219 = icmp sle i32 %218, -4
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %223 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* %7, align 4
  %227 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %228 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %220, %217
  br label %654

232:                                              ; preds = %1
  %233 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %234 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = icmp sge i32 %235, 9
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %654

238:                                              ; preds = %232
  %239 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %240 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %245 = call i32 @b43legacy_calc_nrssi_offset(%struct.b43legacy_wldev* %244)
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %248 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %249 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %250 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %251 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %249, i32 %250)
  %252 = and i32 %251, 32767
  %253 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %247, i32 %248, i32 %252)
  %254 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %255 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %256 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %255, i32 2050)
  %257 = and i32 %256, 65532
  %258 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %254, i32 2050, i32 %257)
  %259 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %260 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %259, i32 994)
  %261 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 7
  store i32 %260, i32* %261, align 4
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %264 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %263, i32 994)
  %265 = or i32 %264, 32768
  %266 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %262, i32 994, i32 %265)
  %267 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %268 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %267, i32 122)
  %269 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  store i32 %268, i32* %269, align 16
  %270 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %271 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %270, i32 82)
  %272 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 1
  store i32 %271, i32* %272, align 4
  %273 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %274 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %273, i32 67)
  %275 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 2
  store i32 %274, i32* %275, align 8
  %276 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %277 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %276, i32 21)
  %278 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 3
  store i32 %277, i32* %278, align 4
  %279 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %280 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %279, i32 90)
  %281 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 4
  store i32 %280, i32* %281, align 16
  %282 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %283 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %282, i32 89)
  %284 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 5
  store i32 %283, i32* %284, align 4
  %285 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %286 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %285, i32 88)
  %287 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 6
  store i32 %286, i32* %287, align 8
  %288 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %289 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %288, i32 998)
  %290 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 8
  store i32 %289, i32* %290, align 16
  %291 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %292 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %293 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %291, i32 %292)
  %294 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 9
  store i32 %293, i32* %294, align 4
  %295 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %296 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp sge i32 %297, 3
  br i1 %298, label %299, label %361

299:                                              ; preds = %246
  %300 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %301 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %300, i32 46)
  %302 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 10
  store i32 %301, i32* %302, align 8
  %303 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %304 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %303, i32 47)
  %305 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 11
  store i32 %304, i32* %305, align 4
  %306 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %307 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %306, i32 2063)
  %308 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 12
  store i32 %307, i32* %308, align 16
  %309 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %310 = load i32, i32* @B43legacy_PHY_G_LO_CONTROL, align 4
  %311 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %309, i32 %310)
  %312 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 13
  store i32 %311, i32* %312, align 4
  %313 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %314 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %313, i32 2049)
  %315 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 14
  store i32 %314, i32* %315, align 8
  %316 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %317 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %316, i32 96)
  %318 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 15
  store i32 %317, i32* %318, align 4
  %319 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %320 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %319, i32 20)
  %321 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 16
  store i32 %320, i32* %321, align 16
  %322 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %323 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %322, i32 1144)
  %324 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 17
  store i32 %323, i32* %324, align 4
  %325 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %326 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %325, i32 46, i32 0)
  %327 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %328 = load i32, i32* @B43legacy_PHY_G_LO_CONTROL, align 4
  %329 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %327, i32 %328, i32 0)
  %330 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %331 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  switch i32 %332, label %350 [
    i32 4, label %333
    i32 6, label %333
    i32 7, label %333
    i32 3, label %344
    i32 5, label %344
  ]

333:                                              ; preds = %299, %299, %299
  %334 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %335 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %336 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %335, i32 1144)
  %337 = or i32 %336, 256
  %338 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %334, i32 1144, i32 %337)
  %339 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %340 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %341 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %340, i32 2049)
  %342 = or i32 %341, 64
  %343 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %339, i32 2049, i32 %342)
  br label %350

344:                                              ; preds = %299, %299
  %345 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %346 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %347 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %346, i32 2049)
  %348 = and i32 %347, 65471
  %349 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %345, i32 2049, i32 %348)
  br label %350

350:                                              ; preds = %299, %344, %333
  %351 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %352 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %353 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %352, i32 96)
  %354 = or i32 %353, 64
  %355 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %351, i32 96, i32 %354)
  %356 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %357 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %358 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %357, i32 20)
  %359 = or i32 %358, 512
  %360 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %356, i32 20, i32 %359)
  br label %361

361:                                              ; preds = %350, %246
  %362 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %363 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %364 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %363, i32 122)
  %365 = or i32 %364, 112
  %366 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %362, i32 122, i32 %365)
  %367 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %368 = call i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev* %367, i32 0, i32 8, i32 0)
  %369 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %370 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %371 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %370, i32 122)
  %372 = and i32 %371, 247
  %373 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %369, i32 122, i32 %372)
  %374 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %375 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp sge i32 %376, 2
  br i1 %377, label %378, label %391

378:                                              ; preds = %361
  %379 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %380 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %381 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %380, i32 2065)
  %382 = and i32 %381, 65487
  %383 = or i32 %382, 48
  %384 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %379, i32 2065, i32 %383)
  %385 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %386 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %387 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %386, i32 2066)
  %388 = and i32 %387, 65487
  %389 = or i32 %388, 16
  %390 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %385, i32 2066, i32 %389)
  br label %391

391:                                              ; preds = %378, %361
  %392 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %393 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %394 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %393, i32 122)
  %395 = or i32 %394, 128
  %396 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %392, i32 122, i32 %395)
  %397 = call i32 @udelay(i32 20)
  %398 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %399 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %398, i32 1151)
  %400 = ashr i32 %399, 8
  %401 = and i32 %400, 63
  store i32 %401, i32* %6, align 4
  %402 = load i32, i32* %6, align 4
  %403 = icmp sge i32 %402, 32
  br i1 %403, label %404, label %407

404:                                              ; preds = %391
  %405 = load i32, i32* %6, align 4
  %406 = sub nsw i32 %405, 64
  store i32 %406, i32* %6, align 4
  br label %407

407:                                              ; preds = %404, %391
  %408 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %409 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %410 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %409, i32 122)
  %411 = and i32 %410, 127
  %412 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %408, i32 122, i32 %411)
  %413 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %414 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = icmp sge i32 %415, 2
  br i1 %416, label %417, label %424

417:                                              ; preds = %407
  %418 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %419 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %420 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %419, i32 3)
  %421 = and i32 %420, 65439
  %422 = or i32 %421, 64
  %423 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %418, i32 3, i32 %422)
  br label %424

424:                                              ; preds = %417, %407
  %425 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %426 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %427 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %428 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %429 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %427, i32 %428)
  %430 = or i32 %429, 8192
  %431 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %425, i32 %426, i32 %430)
  %432 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %433 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %434 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %433, i32 122)
  %435 = or i32 %434, 15
  %436 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %432, i32 122, i32 %435)
  %437 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %438 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %437, i32 21, i32 62256)
  %439 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %440 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp sge i32 %441, 2
  br i1 %442, label %443, label %456

443:                                              ; preds = %424
  %444 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %445 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %446 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %445, i32 2066)
  %447 = and i32 %446, 65487
  %448 = or i32 %447, 32
  %449 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %444, i32 2066, i32 %448)
  %450 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %451 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %452 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %451, i32 2065)
  %453 = and i32 %452, 65487
  %454 = or i32 %453, 32
  %455 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %450, i32 2065, i32 %454)
  br label %456

456:                                              ; preds = %443, %424
  %457 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %458 = call i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev* %457, i32 3, i32 0, i32 1)
  %459 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %460 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 8
  %462 = icmp eq i32 %461, 8
  br i1 %462, label %463, label %466

463:                                              ; preds = %456
  %464 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %465 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %464, i32 67, i32 31)
  br label %481

466:                                              ; preds = %456
  %467 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %468 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %467, i32 82)
  %469 = and i32 %468, 65295
  store i32 %469, i32* %5, align 4
  %470 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %471 = load i32, i32* %5, align 4
  %472 = or i32 %471, 96
  %473 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %470, i32 82, i32 %472)
  %474 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %475 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %474, i32 67)
  %476 = and i32 %475, 65520
  store i32 %476, i32* %5, align 4
  %477 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %478 = load i32, i32* %5, align 4
  %479 = or i32 %478, 9
  %480 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %477, i32 67, i32 %479)
  br label %481

481:                                              ; preds = %466, %463
  %482 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %483 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %482, i32 90, i32 1152)
  %484 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %485 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %484, i32 89, i32 2064)
  %486 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %487 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %486, i32 88, i32 13)
  %488 = call i32 @udelay(i32 20)
  %489 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %490 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %489, i32 1151)
  %491 = ashr i32 %490, 8
  %492 = and i32 %491, 63
  store i32 %492, i32* %7, align 4
  %493 = load i32, i32* %7, align 4
  %494 = icmp sge i32 %493, 32
  br i1 %494, label %495, label %498

495:                                              ; preds = %481
  %496 = load i32, i32* %7, align 4
  %497 = sub nsw i32 %496, 64
  store i32 %497, i32* %7, align 4
  br label %498

498:                                              ; preds = %495, %481
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* %7, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %498
  %503 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %504 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %503, i32 0, i32 3
  store i32 65536, i32* %504, align 4
  br label %512

505:                                              ; preds = %498
  %506 = load i32, i32* %6, align 4
  %507 = load i32, i32* %7, align 4
  %508 = sub nsw i32 %506, %507
  %509 = sdiv i32 4194304, %508
  %510 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %511 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %510, i32 0, i32 3
  store i32 %509, i32* %511, align 4
  br label %512

512:                                              ; preds = %505, %502
  %513 = load i32, i32* %6, align 4
  %514 = icmp sge i32 %513, -4
  br i1 %514, label %515, label %526

515:                                              ; preds = %512
  %516 = load i32, i32* %7, align 4
  %517 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %518 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %517, i32 0, i32 4
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 0
  store i32 %516, i32* %520, align 4
  %521 = load i32, i32* %6, align 4
  %522 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %523 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %522, i32 0, i32 4
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 1
  store i32 %521, i32* %525, align 4
  br label %526

526:                                              ; preds = %515, %512
  %527 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %528 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp sge i32 %529, 3
  br i1 %530, label %531, label %549

531:                                              ; preds = %526
  %532 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %533 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 10
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %532, i32 46, i32 %534)
  %536 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %537 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 11
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %536, i32 47, i32 %538)
  %540 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %541 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 12
  %542 = load i32, i32* %541, align 16
  %543 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %540, i32 2063, i32 %542)
  %544 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %545 = load i32, i32* @B43legacy_PHY_G_LO_CONTROL, align 4
  %546 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 13
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %544, i32 %545, i32 %547)
  br label %549

549:                                              ; preds = %531, %526
  %550 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %551 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = icmp sge i32 %552, 2
  br i1 %553, label %554, label %565

554:                                              ; preds = %549
  %555 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %556 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %557 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %556, i32 2066)
  %558 = and i32 %557, 65487
  %559 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %555, i32 2066, i32 %558)
  %560 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %561 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %562 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %561, i32 2065)
  %563 = and i32 %562, 65487
  %564 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %560, i32 2065, i32 %563)
  br label %565

565:                                              ; preds = %554, %549
  %566 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %567 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  %568 = load i32, i32* %567, align 16
  %569 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %566, i32 122, i32 %568)
  %570 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %571 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 1
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %570, i32 82, i32 %572)
  %574 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %575 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 2
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %574, i32 67, i32 %576)
  %578 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %579 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 7
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %578, i32 994, i32 %580)
  %582 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %583 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 8
  %584 = load i32, i32* %583, align 16
  %585 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %582, i32 998, i32 %584)
  %586 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %587 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %588 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 9
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %586, i32 %587, i32 %589)
  %591 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %592 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 3
  %593 = load i32, i32* %592, align 4
  %594 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %591, i32 21, i32 %593)
  %595 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %596 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 4
  %597 = load i32, i32* %596, align 16
  %598 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %595, i32 90, i32 %597)
  %599 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %600 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 5
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %599, i32 89, i32 %601)
  %603 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %604 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 6
  %605 = load i32, i32* %604, align 8
  %606 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %603, i32 88, i32 %605)
  %607 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %608 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %609 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %608, i32 0, i32 6
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @b43legacy_synth_pu_workaround(%struct.b43legacy_wldev* %607, i32 %610)
  %612 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %613 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %614 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %613, i32 2050)
  %615 = or i32 %614, 3
  %616 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %612, i32 2050, i32 %615)
  %617 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %618 = call i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev* %617)
  %619 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %620 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %621 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %622 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %623 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %621, i32 %622)
  %624 = or i32 %623, 32768
  %625 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %619, i32 %620, i32 %624)
  %626 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %627 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = icmp sge i32 %628, 3
  br i1 %629, label %630, label %647

630:                                              ; preds = %565
  %631 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %632 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 14
  %633 = load i32, i32* %632, align 8
  %634 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %631, i32 2049, i32 %633)
  %635 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %636 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 15
  %637 = load i32, i32* %636, align 4
  %638 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %635, i32 96, i32 %637)
  %639 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %640 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 16
  %641 = load i32, i32* %640, align 16
  %642 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %639, i32 20, i32 %641)
  %643 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %644 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 17
  %645 = load i32, i32* %644, align 4
  %646 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %643, i32 1144, i32 %645)
  br label %647

647:                                              ; preds = %630, %565
  %648 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %649 = call i32 @b43legacy_nrssi_mem_update(%struct.b43legacy_wldev* %648)
  %650 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %651 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %650)
  br label %654

652:                                              ; preds = %1
  %653 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %654

654:                                              ; preds = %237, %652, %647, %231
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43legacy_synth_pu_workaround(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_calc_nrssi_offset(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_nrssi_mem_update(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev*) #2

declare dso_local i32 @B43legacy_BUG_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
