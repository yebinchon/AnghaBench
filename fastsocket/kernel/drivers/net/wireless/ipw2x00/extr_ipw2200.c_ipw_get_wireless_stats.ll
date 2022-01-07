; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.ipw_priv = type { i32, %struct.TYPE_10__*, i64, i32, i64, i64, i64, %struct.iw_statistics }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @ipw_get_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @ipw_get_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.iw_statistics*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %6)
  store %struct.ipw_priv* %7, %struct.ipw_priv** %4, align 8
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %8, i32 0, i32 7
  store %struct.iw_statistics* %9, %struct.iw_statistics** %5, align 8
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %1
  %17 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %18 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %21 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %24 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %27 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %30 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %33 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 7, i32* %34, align 8
  %35 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %36 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %41 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  store %struct.iw_statistics* %45, %struct.iw_statistics** %2, align 8
  br label %97

46:                                               ; preds = %1
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %51 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i64 %49, i64* %52, align 8
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %57 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %63 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %66 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IW_QUAL_NOISE_UPDATED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IW_QUAL_DBM, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %73 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %75, i32 0, i32 3
  %77 = call i64 @average_value(i32* %76)
  %78 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %79 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %82 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %85 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %88 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %94 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  store %struct.iw_statistics* %96, %struct.iw_statistics** %2, align 8
  br label %97

97:                                               ; preds = %46, %16
  %98 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %98
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i64 @average_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
