; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_9__*, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@rt2x00lib_intf_scheduled = common dso_local global i32 0, align 4
@rt2x00lib_autowakeup = common dso_local global i32 0, align 4
@rt2x00lib_sleep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate device\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to initialize hw\0A\00", align 1
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = call i32 @rt2x00lib_set_if_combinations(%struct.rt2x00_dev* %7)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kzalloc(i64 %20, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %181

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 10
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 9
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 8
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 7
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 6
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 5
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 4, i32* %53, align 8
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  store i64 %59, i64* %70, align 8
  %71 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 5
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 8
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %80 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %33
  %88 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %94 = call i32 @BIT(i32 %93)
  %95 = or i32 %92, %94
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 5
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %95
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %87, %33
  %105 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %105
  store i32 %113, i32* %111, align 4
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %114, i32 0, i32 5
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @wiphy_name(%struct.TYPE_10__* %118)
  %120 = call i32 @alloc_ordered_workqueue(i32 %119, i32 0)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %104
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %181

130:                                              ; preds = %104
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %132 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %131, i32 0, i32 3
  %133 = load i32, i32* @rt2x00lib_intf_scheduled, align 4
  %134 = call i32 @INIT_WORK(i32* %132, i32 %133)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %136 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %135, i32 0, i32 2
  %137 = load i32, i32* @rt2x00lib_autowakeup, align 4
  %138 = call i32 @INIT_DELAYED_WORK(i32* %136, i32 %137)
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %140 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %139, i32 0, i32 1
  %141 = load i32, i32* @rt2x00lib_sleep, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %144 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = bitcast {}** %148 to i32 (%struct.rt2x00_dev*)**
  %150 = load i32 (%struct.rt2x00_dev*)*, i32 (%struct.rt2x00_dev*)** %149, align 8
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %152 = call i32 %150(%struct.rt2x00_dev* %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %130
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %157 = call i32 @rt2x00_err(%struct.rt2x00_dev* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %181

158:                                              ; preds = %130
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %160 = call i32 @rt2x00queue_allocate(%struct.rt2x00_dev* %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %181

164:                                              ; preds = %158
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %166 = call i32 @rt2x00lib_probe_hw(%struct.rt2x00_dev* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %171 = call i32 @rt2x00_err(%struct.rt2x00_dev* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %181

172:                                              ; preds = %164
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %174 = call i32 @rt2x00link_register(%struct.rt2x00_dev* %173)
  %175 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %176 = call i32 @rt2x00leds_register(%struct.rt2x00_dev* %175)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %178 = call i32 @rt2x00debug_register(%struct.rt2x00_dev* %177)
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %180 = call i32 @rt2x00rfkill_register(%struct.rt2x00_dev* %179)
  store i32 0, i32* %2, align 4
  br label %185

181:                                              ; preds = %169, %163, %155, %127, %29
  %182 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %183 = call i32 @rt2x00lib_remove_dev(%struct.rt2x00_dev* %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %172
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @rt2x00lib_set_if_combinations(%struct.rt2x00_dev*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_10__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00queue_allocate(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_probe_hw(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00leds_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00debug_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00rfkill_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_remove_dev(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
