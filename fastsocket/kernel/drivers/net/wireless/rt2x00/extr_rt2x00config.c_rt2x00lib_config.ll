; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)* }
%struct.rt2x00lib_conf = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.ieee80211_conf* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.ieee80211_conf = type { i32, i64, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@CONFIG_HT_DISABLED = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@REQUIRE_PS_AUTOWAKE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CONFIG_POWERSAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_config(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt2x00lib_conf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @memset(%struct.rt2x00lib_conf* %7, i32 0, i32 16)
  %13 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 2
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %21 = call i32 @conf_is_ht(%struct.ieee80211_conf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 5
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 5
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %35 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 5
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %43 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %44 = call i64 @rt2x00ht_center_channel(%struct.rt2x00_dev* %42, %struct.ieee80211_conf* %43)
  store i64 %44, i64* %8, align 8
  br label %56

45:                                               ; preds = %33
  %46 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 5
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %45, %37
  %57 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %59 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @memcpy(%struct.TYPE_12__* %57, i32* %63, i32 4)
  %65 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 1
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 13
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @memcpy(%struct.TYPE_12__* %65, i32* %71, i32 4)
  %73 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %56, %3
  %79 = load i32, i32* @REQUIRE_PS_AUTOWAKE, align 4
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %80, i32 0, i32 10
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %91 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %90, i32 0, i32 6
  %92 = call i32 @cancel_delayed_work_sync(i32* %91)
  br label %93

93:                                               ; preds = %89, %84, %78
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %95 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %94, i32 0, i32 11
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)*, i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)** %99, align 8
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 %100(%struct.rt2x00_dev* %101, %struct.rt2x00lib_conf* %7, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %110 = call i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev* %109, i32 0)
  br label %111

111:                                              ; preds = %108, %93
  %112 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %114 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %113, i32 0, i32 5
  %115 = call i64 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %165

117:                                              ; preds = %111
  %118 = load i32, i32* @REQUIRE_PS_AUTOWAKE, align 4
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %120 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %119, i32 0, i32 10
  %121 = call i64 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %165

128:                                              ; preds = %123
  %129 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %128
  %136 = load i64, i64* @jiffies, align 8
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %138 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  store i64 %140, i64* %11, align 8
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %142 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @msecs_to_jiffies(i32 %143)
  store i64 %144, i64* %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  store i64 0, i64* %11, align 8
  br label %149

149:                                              ; preds = %148, %135
  %150 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %151 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = mul i64 %152, %153
  %155 = load i64, i64* %11, align 8
  %156 = sub i64 %154, %155
  store i64 %156, i64* %9, align 8
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %158 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %161 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %160, i32 0, i32 6
  %162 = load i64, i64* %9, align 8
  %163 = sub i64 %162, 15
  %164 = call i32 @queue_delayed_work(i32 %159, i32* %161, i64 %163)
  br label %165

165:                                              ; preds = %149, %128, %123, %117, %111
  %166 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %167 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load i32, i32* @CONFIG_POWERSAVING, align 4
  %174 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %175 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %174, i32 0, i32 5
  %176 = call i32 @set_bit(i32 %173, i32* %175)
  br label %182

177:                                              ; preds = %165
  %178 = load i32, i32* @CONFIG_POWERSAVING, align 4
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %180 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %179, i32 0, i32 5
  %181 = call i32 @clear_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %184 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %190 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %192 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %198 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %200 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %203 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %205 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %208 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %210 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %213 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  ret void
}

declare dso_local i32 @memset(%struct.rt2x00lib_conf*, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i64 @rt2x00ht_center_channel(%struct.rt2x00_dev*, %struct.ieee80211_conf*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
