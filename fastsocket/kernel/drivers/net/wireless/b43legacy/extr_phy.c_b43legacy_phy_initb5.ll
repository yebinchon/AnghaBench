; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initb5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initb5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i64, %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32, i64 }

@B43legacy_MMIO_PHY_RADIO = common dso_local global i32 0, align 4
@B43legacy_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_initb5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_initb5(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 2
  store %struct.b43legacy_phy* %8, %struct.b43legacy_phy** %3, align 8
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %15, i32 122)
  %17 = or i32 %16, 80
  %18 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %14, i32 122, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = call i32 @is_bcm_board_vendor(%struct.b43legacy_wldev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1046
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  store i32 8480, i32* %5, align 4
  store i32 168, i32* %4, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 199
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 514
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %34

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %23, %19
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %51 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %50, i32 53)
  %52 = and i32 %51, 61695
  %53 = or i32 %52, 1792
  %54 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %49, i32 53, i32 %53)
  %55 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %56 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8272
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %61 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %60, i32 56, i32 1639)
  br label %62

62:                                               ; preds = %59, %48
  %63 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %62
  %68 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %69 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 8272
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %74, i32 122)
  %76 = or i32 %75, 32
  %77 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %73, i32 122, i32 %76)
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %79, i32 81)
  %81 = or i32 %80, 4
  %82 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %78, i32 81, i32 %81)
  br label %83

83:                                               ; preds = %72, %67
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %85 = load i32, i32* @B43legacy_MMIO_PHY_RADIO, align 4
  %86 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %84, i32 %85, i32 0)
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %89 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %88, i32 2050)
  %90 = or i32 %89, 256
  %91 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %87, i32 2050, i32 %90)
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %94 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %93, i32 1067)
  %95 = or i32 %94, 8192
  %96 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %92, i32 1067, i32 %95)
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %98 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %97, i32 28, i32 6250)
  %99 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %101 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %100, i32 19)
  %102 = and i32 %101, 255
  %103 = or i32 %102, 6400
  %104 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %99, i32 19, i32 %103)
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %107 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %106, i32 53)
  %108 = and i32 %107, 65472
  %109 = or i32 %108, 100
  %110 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %105, i32 53, i32 %109)
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %112 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %113 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %112, i32 93)
  %114 = and i32 %113, 65408
  %115 = or i32 %114, 10
  %116 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %111, i32 93, i32 %115)
  %117 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %118 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %117, i32 91, i32 0)
  %119 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %120 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %119, i32 92, i32 0)
  br label %121

121:                                              ; preds = %83, %62
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %129 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %130 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %131 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %129, i32 %130)
  %132 = or i32 %131, 4096
  %133 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %127, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %136 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %140, i32 38, i32 52736)
  %142 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %143 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %142, i32 33, i32 14179)
  %144 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %145 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %144, i32 34, i32 7107)
  %146 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %147 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %146, i32 35, i32 1785)
  %148 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %149 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %148, i32 36, i32 894)
  br label %153

150:                                              ; preds = %134
  %151 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %152 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %151, i32 38, i32 52224)
  br label %153

153:                                              ; preds = %150, %139
  %154 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %155 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %154, i32 48, i32 198)
  %156 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %157 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %156, i32 1004, i32 16162)
  %158 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %159 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %164 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %163, i32 32, i32 15900)
  br label %168

165:                                              ; preds = %153
  %166 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %167 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %166, i32 32, i32 12316)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %170 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %175 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %174, i32 996, i32 12288)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %178 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 255
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %186

182:                                              ; preds = %176
  %183 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %184 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  br label %186

186:                                              ; preds = %182, %181
  %187 = phi i32 [ 1, %181 ], [ %185, %182 ]
  store i32 %187, i32* %6, align 4
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %189 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %188, i32 7, i32 0)
  %190 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %191 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 8272
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %196 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %195, i32 117, i32 128)
  %197 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %198 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %197, i32 121, i32 129)
  br label %199

199:                                              ; preds = %194, %186
  %200 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %201 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %200, i32 80, i32 32)
  %202 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %203 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %202, i32 80, i32 35)
  %204 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %205 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 8272
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %210 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %209, i32 80, i32 32)
  %211 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %212 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %211, i32 90, i32 112)
  br label %213

213:                                              ; preds = %208, %199
  %214 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %215 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %214, i32 91, i32 123)
  %216 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %217 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %216, i32 92, i32 176)
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %219 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %220 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %219, i32 122)
  %221 = or i32 %220, 7
  %222 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %218, i32 122, i32 %221)
  %223 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %223, i32 %224, i32 0)
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %226, i32 20, i32 128)
  %228 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %229 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %228, i32 50, i32 202)
  %230 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %231 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %230, i32 42, i32 34979)
  %232 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %233 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %232, i32 65535, i32 65535, i32 65535)
  %234 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %235 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 8272
  br i1 %237, label %238, label %241

238:                                              ; preds = %213
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %240 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %239, i32 93, i32 13)
  br label %241

241:                                              ; preds = %238, %213
  %242 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %243 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %244 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %243, i32 996)
  %245 = and i32 %244, 65472
  %246 = or i32 %245, 4
  %247 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %242, i32 996, i32 %246)
  ret void
}

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @is_bcm_board_vendor(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
