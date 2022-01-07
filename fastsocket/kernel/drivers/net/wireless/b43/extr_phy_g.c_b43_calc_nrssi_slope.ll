; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_calc_nrssi_slope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_calc_nrssi_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32* }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_G_CRS = common dso_local global i32 0, align 4
@B43_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4
@B43_PHY_G_LO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_calc_nrssi_slope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_calc_nrssi_slope(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca [18 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_phy* %10, %struct.b43_phy** %3, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 4
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %4, align 8
  %14 = bitcast [18 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 72, i1 false)
  %15 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @B43_PHYTYPE_G, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @B43_WARN_ON(i32 %20)
  %22 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 9
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %371

27:                                               ; preds = %1
  %28 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %29 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = call i32 @b43_calc_nrssi_offset(%struct.b43_wldev* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_PHY_G_CRS, align 4
  %38 = call i32 @b43_phy_mask(%struct.b43_wldev* %36, i32 %37, i32 32767)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_phy_mask(%struct.b43_wldev* %39, i32 2050, i32 65532)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @b43_read16(%struct.b43_wldev* %41, i32 994)
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 7
  store i32 %42, i32* %43, align 4
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @b43_read16(%struct.b43_wldev* %45, i32 994)
  %47 = or i32 %46, 32768
  %48 = call i32 @b43_write16(%struct.b43_wldev* %44, i32 994, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @b43_radio_read16(%struct.b43_wldev* %49, i32 122)
  %51 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_radio_read16(%struct.b43_wldev* %52, i32 82)
  %54 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_radio_read16(%struct.b43_wldev* %55, i32 67)
  %57 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @b43_phy_read(%struct.b43_wldev* %58, i32 21)
  %60 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_phy_read(%struct.b43_wldev* %61, i32 90)
  %63 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 4
  store i32 %62, i32* %63, align 16
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_phy_read(%struct.b43_wldev* %64, i32 89)
  %66 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 5
  store i32 %65, i32* %66, align 4
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @b43_phy_read(%struct.b43_wldev* %67, i32 88)
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 6
  store i32 %68, i32* %69, align 8
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = call i32 @b43_read16(%struct.b43_wldev* %70, i32 998)
  %72 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  store i32 %71, i32* %72, align 16
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %75 = call i32 @b43_read16(%struct.b43_wldev* %73, i32 %74)
  %76 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 9
  store i32 %75, i32* %76, align 4
  %77 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %78 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 3
  br i1 %80, label %81, label %128

81:                                               ; preds = %35
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @b43_phy_read(%struct.b43_wldev* %82, i32 46)
  %84 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 10
  store i32 %83, i32* %84, align 8
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @b43_phy_read(%struct.b43_wldev* %85, i32 47)
  %87 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 11
  store i32 %86, i32* %87, align 4
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = call i32 @b43_phy_read(%struct.b43_wldev* %88, i32 2063)
  %90 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 12
  store i32 %89, i32* %90, align 16
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = load i32, i32* @B43_PHY_G_LO_CONTROL, align 4
  %93 = call i32 @b43_phy_read(%struct.b43_wldev* %91, i32 %92)
  %94 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 13
  store i32 %93, i32* %94, align 4
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = call i32 @b43_phy_read(%struct.b43_wldev* %95, i32 2049)
  %97 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 14
  store i32 %96, i32* %97, align 8
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = call i32 @b43_phy_read(%struct.b43_wldev* %98, i32 96)
  %100 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 15
  store i32 %99, i32* %100, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = call i32 @b43_phy_read(%struct.b43_wldev* %101, i32 20)
  %103 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 16
  store i32 %102, i32* %103, align 16
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = call i32 @b43_phy_read(%struct.b43_wldev* %104, i32 1144)
  %106 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 17
  store i32 %105, i32* %106, align 4
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = call i32 @b43_phy_write(%struct.b43_wldev* %107, i32 46, i32 0)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_PHY_G_LO_CONTROL, align 4
  %111 = call i32 @b43_phy_write(%struct.b43_wldev* %109, i32 %110, i32 0)
  %112 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %113 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %123 [
    i32 4, label %115
    i32 6, label %115
    i32 7, label %115
    i32 3, label %120
    i32 5, label %120
  ]

115:                                              ; preds = %81, %81, %81
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = call i32 @b43_phy_set(%struct.b43_wldev* %116, i32 1144, i32 256)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = call i32 @b43_phy_set(%struct.b43_wldev* %118, i32 2049, i32 64)
  br label %123

120:                                              ; preds = %81, %81
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = call i32 @b43_phy_mask(%struct.b43_wldev* %121, i32 2049, i32 65471)
  br label %123

123:                                              ; preds = %81, %120, %115
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = call i32 @b43_phy_set(%struct.b43_wldev* %124, i32 96, i32 64)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @b43_phy_set(%struct.b43_wldev* %126, i32 20, i32 512)
  br label %128

128:                                              ; preds = %123, %35
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = call i32 @b43_radio_set(%struct.b43_wldev* %129, i32 122, i32 112)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = call i32 @b43_set_all_gains(%struct.b43_wldev* %131, i32 0, i32 8, i32 0)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = call i32 @b43_radio_mask(%struct.b43_wldev* %133, i32 122, i32 247)
  %135 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %136 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %137, 2
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = call i32 @b43_phy_maskset(%struct.b43_wldev* %140, i32 2065, i32 65487, i32 48)
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %143 = call i32 @b43_phy_maskset(%struct.b43_wldev* %142, i32 2066, i32 65487, i32 16)
  br label %144

144:                                              ; preds = %139, %128
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = call i32 @b43_radio_set(%struct.b43_wldev* %145, i32 122, i32 128)
  %147 = call i32 @udelay(i32 20)
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = call i32 @b43_phy_read(%struct.b43_wldev* %148, i32 1151)
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 63
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp sge i32 %152, 32
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i32, i32* %7, align 4
  %156 = sub nsw i32 %155, 64
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %154, %144
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %159 = call i32 @b43_radio_mask(%struct.b43_wldev* %158, i32 122, i32 127)
  %160 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %161 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %162, 2
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = call i32 @b43_phy_maskset(%struct.b43_wldev* %165, i32 3, i32 65439, i32 64)
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %172 = call i32 @b43_read16(%struct.b43_wldev* %170, i32 %171)
  %173 = or i32 %172, 8192
  %174 = call i32 @b43_write16(%struct.b43_wldev* %168, i32 %169, i32 %173)
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = call i32 @b43_radio_set(%struct.b43_wldev* %175, i32 122, i32 15)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = call i32 @b43_phy_write(%struct.b43_wldev* %177, i32 21, i32 62256)
  %179 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %180 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %181, 2
  br i1 %182, label %183, label %188

183:                                              ; preds = %167
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = call i32 @b43_phy_maskset(%struct.b43_wldev* %184, i32 2066, i32 65487, i32 32)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = call i32 @b43_phy_maskset(%struct.b43_wldev* %186, i32 2065, i32 65487, i32 32)
  br label %188

188:                                              ; preds = %183, %167
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = call i32 @b43_set_all_gains(%struct.b43_wldev* %189, i32 3, i32 0, i32 1)
  %191 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %192 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 8
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = call i32 @b43_radio_write16(%struct.b43_wldev* %196, i32 67, i32 31)
  br label %213

198:                                              ; preds = %188
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = call i32 @b43_radio_read16(%struct.b43_wldev* %199, i32 82)
  %201 = and i32 %200, 65295
  store i32 %201, i32* %6, align 4
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, 96
  %205 = call i32 @b43_radio_write16(%struct.b43_wldev* %202, i32 82, i32 %204)
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = call i32 @b43_radio_read16(%struct.b43_wldev* %206, i32 67)
  %208 = and i32 %207, 65520
  store i32 %208, i32* %6, align 4
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = load i32, i32* %6, align 4
  %211 = or i32 %210, 9
  %212 = call i32 @b43_radio_write16(%struct.b43_wldev* %209, i32 67, i32 %211)
  br label %213

213:                                              ; preds = %198, %195
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = call i32 @b43_phy_write(%struct.b43_wldev* %214, i32 90, i32 1152)
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = call i32 @b43_phy_write(%struct.b43_wldev* %216, i32 89, i32 2064)
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = call i32 @b43_phy_write(%struct.b43_wldev* %218, i32 88, i32 13)
  %220 = call i32 @udelay(i32 20)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %222 = call i32 @b43_phy_read(%struct.b43_wldev* %221, i32 1151)
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 63
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp sge i32 %225, 32
  br i1 %226, label %227, label %230

227:                                              ; preds = %213
  %228 = load i32, i32* %8, align 4
  %229 = sub nsw i32 %228, 64
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %227, %213
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %236 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %235, i32 0, i32 0
  store i32 65536, i32* %236, align 8
  br label %244

237:                                              ; preds = %230
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sdiv i32 4194304, %240
  %242 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %243 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %237, %234
  %245 = load i32, i32* %7, align 4
  %246 = icmp sge i32 %245, -4
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %250 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  store i32 %248, i32* %252, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %255 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %247, %244
  %259 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %260 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = icmp sge i32 %261, 3
  br i1 %262, label %263, label %281

263:                                              ; preds = %258
  %264 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %265 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 10
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @b43_phy_write(%struct.b43_wldev* %264, i32 46, i32 %266)
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %269 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 11
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @b43_phy_write(%struct.b43_wldev* %268, i32 47, i32 %270)
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %273 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 12
  %274 = load i32, i32* %273, align 16
  %275 = call i32 @b43_phy_write(%struct.b43_wldev* %272, i32 2063, i32 %274)
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = load i32, i32* @B43_PHY_G_LO_CONTROL, align 4
  %278 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 13
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @b43_phy_write(%struct.b43_wldev* %276, i32 %277, i32 %279)
  br label %281

281:                                              ; preds = %263, %258
  %282 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %283 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp sge i32 %284, 2
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = call i32 @b43_phy_mask(%struct.b43_wldev* %287, i32 2066, i32 65487)
  %289 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %290 = call i32 @b43_phy_mask(%struct.b43_wldev* %289, i32 2065, i32 65487)
  br label %291

291:                                              ; preds = %286, %281
  %292 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %293 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %294 = load i32, i32* %293, align 16
  %295 = call i32 @b43_radio_write16(%struct.b43_wldev* %292, i32 122, i32 %294)
  %296 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %297 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @b43_radio_write16(%struct.b43_wldev* %296, i32 82, i32 %298)
  %300 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %301 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @b43_radio_write16(%struct.b43_wldev* %300, i32 67, i32 %302)
  %304 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %305 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 7
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @b43_write16(%struct.b43_wldev* %304, i32 994, i32 %306)
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %309 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %310 = load i32, i32* %309, align 16
  %311 = call i32 @b43_write16(%struct.b43_wldev* %308, i32 998, i32 %310)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %313 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %314 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 9
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @b43_write16(%struct.b43_wldev* %312, i32 %313, i32 %315)
  %317 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %318 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @b43_phy_write(%struct.b43_wldev* %317, i32 21, i32 %319)
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %322 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 4
  %323 = load i32, i32* %322, align 16
  %324 = call i32 @b43_phy_write(%struct.b43_wldev* %321, i32 90, i32 %323)
  %325 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %326 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 5
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @b43_phy_write(%struct.b43_wldev* %325, i32 89, i32 %327)
  %329 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %330 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 6
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @b43_phy_write(%struct.b43_wldev* %329, i32 88, i32 %331)
  %333 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %334 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %335 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @b43_synth_pu_workaround(%struct.b43_wldev* %333, i32 %336)
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %339 = call i32 @b43_phy_set(%struct.b43_wldev* %338, i32 2050, i32 3)
  %340 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %341 = call i32 @b43_set_original_gains(%struct.b43_wldev* %340)
  %342 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %343 = load i32, i32* @B43_PHY_G_CRS, align 4
  %344 = call i32 @b43_phy_set(%struct.b43_wldev* %342, i32 %343, i32 32768)
  %345 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %346 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = icmp sge i32 %347, 3
  br i1 %348, label %349, label %366

349:                                              ; preds = %291
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %351 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 14
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @b43_phy_write(%struct.b43_wldev* %350, i32 2049, i32 %352)
  %354 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %355 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 15
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @b43_phy_write(%struct.b43_wldev* %354, i32 96, i32 %356)
  %358 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %359 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 16
  %360 = load i32, i32* %359, align 16
  %361 = call i32 @b43_phy_write(%struct.b43_wldev* %358, i32 20, i32 %360)
  %362 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %363 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 17
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @b43_phy_write(%struct.b43_wldev* %362, i32 1144, i32 %364)
  br label %366

366:                                              ; preds = %349, %291
  %367 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %368 = call i32 @b43_nrssi_mem_update(%struct.b43_wldev* %367)
  %369 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %370 = call i32 @b43_calc_nrssi_threshold(%struct.b43_wldev* %369)
  br label %371

371:                                              ; preds = %366, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @b43_calc_nrssi_offset(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_set_all_gains(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_synth_pu_workaround(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_set_original_gains(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nrssi_mem_update(%struct.b43_wldev*) #2

declare dso_local i32 @b43_calc_nrssi_threshold(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
