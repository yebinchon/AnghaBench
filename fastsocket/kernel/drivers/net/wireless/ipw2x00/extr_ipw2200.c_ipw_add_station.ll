; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_add_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32*, i64 }
%struct.ipw_station_entry = type { i32, i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@CFG_ADHOC_PERSIST = common dso_local global i32 0, align 4
@MAX_STATIONS = common dso_local global i32 0, align 4
@IPW_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Adding AdHoc station: %pM\0A\00", align 1
@IPW_STATION_TABLE_LOWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32*)* @ipw_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_add_station(%struct.ipw_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ipw_station_entry, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcmp(i32 %21, i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %14
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @CFG_ADHOC_PERSIST, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %26
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAX_STATIONS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @IPW_INVALID_STATION, align 4
  store i32 %53, i32* %3, align 4
  br label %86

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %55)
  %57 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %60, i32* %61, i32 %62)
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memcpy(i32 %70, i32* %71, i32 %72)
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %75 = load i64, i64* @IPW_STATION_TABLE_LOWER, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 24
  %79 = add i64 %75, %78
  %80 = call i32 @ipw_write_direct(%struct.ipw_priv* %74, i64 %79, %struct.ipw_station_entry* %6, i32 24)
  %81 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %82 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %54, %52, %42
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_SCAN(i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ipw_write_direct(%struct.ipw_priv*, i64, %struct.ipw_station_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
