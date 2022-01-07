; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RTL8187BvB = common dso_local global i64 0, align 8
@rtl8225z2_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck = common dso_local global i32* null, align 8
@rtl8225z2_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225z2_b_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_b_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %11, align 8
  store %struct.rtl8187_priv* %12, %struct.rtl8187_priv** %5, align 8
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RTL8187BvB, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 15, i32 22
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RTL8187BvB, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 7
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %43, %35
  %54 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 15
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @min(i32 %60, i32 35)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 15
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %66 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RTL8187BvB, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 17, i32 25
  store i32 %71, i32* %7, align 4
  br label %82

72:                                               ; preds = %53
  %73 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %74 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RTL8187BvB, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 2, i32 10
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %72, %64
  %83 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %84 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 4
  %87 = and i32 %86, 15
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @min(i32 %90, i32 35)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 14
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32*, i32** @rtl8225z2_tx_power_cck_ch14, align 8
  store i32* %95, i32** %8, align 8
  br label %98

96:                                               ; preds = %82
  %97 = load i32*, i32** @rtl8225z2_tx_power_cck, align 8
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RTL8187BvB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load i32, i32* %6, align 4
  %106 = icmp sle i32 %105, 6
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %118

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 11
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  store i32* %113, i32** %8, align 8
  br label %117

114:                                              ; preds = %108
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 16
  store i32* %116, i32** %8, align 8
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %107
  br label %141

119:                                              ; preds = %98
  %120 = load i32, i32* %6, align 4
  %121 = icmp sle i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %140

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = icmp sle i32 %124, 11
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  store i32* %128, i32** %8, align 8
  br label %139

129:                                              ; preds = %123
  %130 = load i32, i32* %6, align 4
  %131 = icmp sle i32 %130, 17
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 16
  store i32* %134, i32** %8, align 8
  br label %138

135:                                              ; preds = %129
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 24
  store i32* %137, i32** %8, align 8
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %126
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %118
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 8
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 68, %147
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %8, align 8
  %151 = load i32, i32* %149, align 4
  %152 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %146, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %142

156:                                              ; preds = %142
  %157 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %158 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %159 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 1
  %168 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %157, i32* %161, i32 %167)
  %169 = call i32 @msleep(i32 1)
  %170 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %171 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %172 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 1
  %181 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %170, i32* %174, i32 %180)
  %182 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %183 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RTL8187BvB, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %156
  %188 = load i32, i32* %7, align 4
  %189 = icmp sle i32 %188, 11
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %192 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %191, i32 135, i32 96)
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %194 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %193, i32 137, i32 96)
  br label %200

195:                                              ; preds = %187
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %197 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %196, i32 135, i32 92)
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %199 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %198, i32 137, i32 92)
  br label %200

200:                                              ; preds = %195, %190
  br label %224

201:                                              ; preds = %156
  %202 = load i32, i32* %7, align 4
  %203 = icmp sle i32 %202, 11
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %206 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %205, i32 135, i32 92)
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %208 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %207, i32 137, i32 92)
  br label %223

209:                                              ; preds = %201
  %210 = load i32, i32* %7, align 4
  %211 = icmp sle i32 %210, 17
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %214 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %213, i32 135, i32 84)
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %216 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %215, i32 137, i32 84)
  br label %222

217:                                              ; preds = %209
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %219 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %218, i32 135, i32 80)
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %221 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %220, i32 137, i32 80)
  br label %222

222:                                              ; preds = %217, %212
  br label %223

223:                                              ; preds = %222, %204
  br label %224

224:                                              ; preds = %223, %200
  %225 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
