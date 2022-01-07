; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initb5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initb5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64, %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i64, i64 }
%struct.b43_phy = type { i32, i32, i32, i32, i64, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32 }

@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@B43_MMIO_PHY_RADIO = common dso_local global i32 0, align 4
@B43_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_initb5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_initb5(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_phy* %9, %struct.b43_phy** %3, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 5
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %4, align 8
  %13 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_radio_set(%struct.b43_wldev* %18, i32 122, i32 80)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %20
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  store i32 8480, i32* %6, align 4
  store i32 168, i32* %5, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 199
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 514
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %37

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %28, %20
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %52, i32 53, i32 61695, i32 1792)
  %54 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %55 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 8272
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %59, i32 56, i32 1639)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %63 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %97

71:                                               ; preds = %66, %61
  %72 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %73 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 8272
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @b43_radio_set(%struct.b43_wldev* %77, i32 122, i32 32)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = call i32 @b43_radio_set(%struct.b43_wldev* %79, i32 81, i32 4)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B43_MMIO_PHY_RADIO, align 4
  %84 = call i32 @b43_write16(%struct.b43_wldev* %82, i32 %83, i32 0)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @b43_phy_set(%struct.b43_wldev* %85, i32 2050, i32 256)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = call i32 @b43_phy_set(%struct.b43_wldev* %87, i32 1067, i32 8192)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @b43_phy_write(%struct.b43_wldev* %89, i32 28, i32 6250)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @b43_phy_maskset(%struct.b43_wldev* %91, i32 19, i32 255, i32 6400)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @b43_phy_maskset(%struct.b43_wldev* %93, i32 53, i32 65472, i32 100)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = call i32 @b43_phy_maskset(%struct.b43_wldev* %95, i32 93, i32 65408, i32 10)
  br label %97

97:                                               ; preds = %81, %66
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %105 = call i32 @b43_phy_set(%struct.b43_wldev* %103, i32 %104, i32 2048)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %108 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = call i32 @b43_phy_write(%struct.b43_wldev* %112, i32 38, i32 52736)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = call i32 @b43_phy_write(%struct.b43_wldev* %114, i32 33, i32 14179)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = call i32 @b43_phy_write(%struct.b43_wldev* %116, i32 34, i32 7107)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = call i32 @b43_phy_write(%struct.b43_wldev* %118, i32 35, i32 1785)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = call i32 @b43_phy_write(%struct.b43_wldev* %120, i32 36, i32 894)
  br label %125

122:                                              ; preds = %106
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %124 = call i32 @b43_phy_write(%struct.b43_wldev* %123, i32 38, i32 52224)
  br label %125

125:                                              ; preds = %122, %111
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @b43_phy_write(%struct.b43_wldev* %126, i32 48, i32 198)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = call i32 @b43_write16(%struct.b43_wldev* %128, i32 1004, i32 16162)
  %130 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %131 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = call i32 @b43_phy_write(%struct.b43_wldev* %135, i32 32, i32 15900)
  br label %140

137:                                              ; preds = %125
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = call i32 @b43_phy_write(%struct.b43_wldev* %138, i32 32, i32 12316)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %142 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = call i32 @b43_write16(%struct.b43_wldev* %146, i32 996, i32 12288)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %150 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %7, align 4
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %153 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %152, i32 7, i32 0)
  %154 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %155 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 8272
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = call i32 @b43_radio_write16(%struct.b43_wldev* %159, i32 117, i32 128)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = call i32 @b43_radio_write16(%struct.b43_wldev* %161, i32 121, i32 129)
  br label %163

163:                                              ; preds = %158, %148
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = call i32 @b43_radio_write16(%struct.b43_wldev* %164, i32 80, i32 32)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = call i32 @b43_radio_write16(%struct.b43_wldev* %166, i32 80, i32 35)
  %168 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %169 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 8272
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %174 = call i32 @b43_radio_write16(%struct.b43_wldev* %173, i32 80, i32 32)
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = call i32 @b43_radio_write16(%struct.b43_wldev* %175, i32 90, i32 112)
  br label %177

177:                                              ; preds = %172, %163
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = call i32 @b43_radio_write16(%struct.b43_wldev* %178, i32 91, i32 123)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = call i32 @b43_radio_write16(%struct.b43_wldev* %180, i32 92, i32 176)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = call i32 @b43_radio_set(%struct.b43_wldev* %182, i32 122, i32 7)
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %184, i32 %185, i32 0)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = call i32 @b43_phy_write(%struct.b43_wldev* %187, i32 20, i32 128)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = call i32 @b43_phy_write(%struct.b43_wldev* %189, i32 50, i32 202)
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = call i32 @b43_phy_write(%struct.b43_wldev* %191, i32 42, i32 34979)
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %195 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %194, i32 0, i32 2
  %196 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %197 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %196, i32 0, i32 1
  %198 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %199 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @b43_set_txpower_g(%struct.b43_wldev* %193, i32* %195, i32* %197, i32 %200)
  %202 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %203 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 8272
  br i1 %205, label %206, label %209

206:                                              ; preds = %177
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = call i32 @b43_radio_write16(%struct.b43_wldev* %207, i32 93, i32 13)
  br label %209

209:                                              ; preds = %206, %177
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = call i32 @b43_read16(%struct.b43_wldev* %211, i32 996)
  %213 = and i32 %212, 65472
  %214 = or i32 %213, 4
  %215 = call i32 @b43_write16(%struct.b43_wldev* %210, i32 996, i32 %214)
  ret void
}

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_gphy_channel_switch(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_set_txpower_g(%struct.b43_wldev*, i32*, i32*, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
