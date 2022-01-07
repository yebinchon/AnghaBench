; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_module.c_alloc_libipw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_module.c_alloc_libipw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.libipw_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i64, i64, i32, i32, i32, i8*, i8*, %struct.net_device* }

@.str = private unnamed_addr constant [17 x i8] c"Initializing...\0A\00", align 1
@libipw_config_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to allocate wiphy.\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@libipw_wiphy_privid = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate beacon storage: %d\0A\00", align 1
@DEFAULT_FTS = common dso_local global i8* null, align 8
@DEFAULT_MAX_SCAN_AGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_libipw(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 @LIBIPW_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 104, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.net_device* @alloc_etherdev(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.libipw_device* @netdev_priv(%struct.net_device* %19)
  store %struct.libipw_device* %20, %struct.libipw_device** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %23 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %22, i32 0, i32 15
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %75, label %26

26:                                               ; preds = %18
  %27 = call %struct.TYPE_5__* @wiphy_new(i32* @libipw_config_ops, i32 0)
  %28 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %29 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %32 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @LIBIPW_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %135

38:                                               ; preds = %26
  %39 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %40 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %39, i32 0, i32 6
  %41 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %42 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %41, i32 0, i32 15
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %44, align 8
  %45 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %46 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %47 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @libipw_wiphy_privid, align 4
  %50 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %51 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %49, i32* %54, align 8
  %55 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %56 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %61 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = or i32 %66, %68
  %70 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %71 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %38, %18
  %76 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %77 = call i32 @libipw_networks_allocate(%struct.libipw_device* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i8*, ...) @LIBIPW_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %125

83:                                               ; preds = %75
  %84 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %85 = call i32 @libipw_networks_initialize(%struct.libipw_device* %84)
  %86 = load i8*, i8** @DEFAULT_FTS, align 8
  %87 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %88 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %87, i32 0, i32 14
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @DEFAULT_FTS, align 8
  %90 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %91 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @DEFAULT_MAX_SCAN_AGE, align 4
  %93 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %94 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 8
  %95 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %96 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %98 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %100 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  %101 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %102 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %104 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %103, i32 0, i32 4
  store i32 1, i32* %104, align 8
  %105 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %106 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %105, i32 0, i32 5
  store i32 1, i32* %106, align 4
  %107 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %108 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %107, i32 0, i32 10
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %111 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %110, i32 0, i32 11
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %116 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %115, i32 0, i32 10
  %117 = call i32 @lib80211_crypt_info_init(i32* %111, i32 %114, i32* %116)
  %118 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %119 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %118, i32 0, i32 9
  store i64 0, i64* %119, align 8
  %120 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %121 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %120, i32 0, i32 8
  store i64 0, i64* %121, align 8
  %122 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %123 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %122, i32 0, i32 7
  store i64 0, i64* %123, align 8
  %124 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %124, %struct.net_device** %3, align 8
  br label %139

125:                                              ; preds = %80
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %130 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @wiphy_free(%struct.TYPE_5__* %132)
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134, %36
  %136 = load %struct.net_device*, %struct.net_device** %7, align 8
  %137 = call i32 @free_netdev(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %17
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %139

139:                                              ; preds = %138, %83
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %140
}

declare dso_local i32 @LIBIPW_DEBUG_INFO(i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.libipw_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_5__* @wiphy_new(i32*, i32) #1

declare dso_local i32 @LIBIPW_ERROR(i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @libipw_networks_allocate(%struct.libipw_device*) #1

declare dso_local i32 @libipw_networks_initialize(%struct.libipw_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lib80211_crypt_info_init(i32*, i32, i32*) #1

declare dso_local i32 @wiphy_free(%struct.TYPE_5__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
