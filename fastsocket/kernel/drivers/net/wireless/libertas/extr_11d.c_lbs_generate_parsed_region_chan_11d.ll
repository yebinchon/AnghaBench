; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_generate_parsed_region_chan_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_generate_parsed_region_chan_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region_channel = type { i64, i32, i32, %struct.chan_freq_power* }
%struct.chan_freq_power = type { i32, i32 }
%struct.parsed_region_chan_11d = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"region_chan is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cfp is NULL \0A\00", align 1
@COUNTRY_CODE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"region 0x%x, band %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"chan %d, pwr %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nrchan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.region_channel*, %struct.parsed_region_chan_11d*)* @lbs_generate_parsed_region_chan_11d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_generate_parsed_region_chan_11d(%struct.region_channel* %0, %struct.parsed_region_chan_11d* %1) #0 {
  %3 = alloca %struct.region_channel*, align 8
  %4 = alloca %struct.parsed_region_chan_11d*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.chan_freq_power*, align 8
  store %struct.region_channel* %0, %struct.region_channel** %3, align 8
  store %struct.parsed_region_chan_11d* %1, %struct.parsed_region_chan_11d** %4, align 8
  %7 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %8 = icmp eq %struct.region_channel* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %101

11:                                               ; preds = %2
  %12 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %13 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %12, i32 0, i32 3
  %14 = load %struct.chan_freq_power*, %struct.chan_freq_power** %13, align 8
  store %struct.chan_freq_power* %14, %struct.chan_freq_power** %6, align 8
  %15 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %16 = icmp eq %struct.chan_freq_power* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %101

19:                                               ; preds = %11
  %20 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %21 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %24 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %26 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %29 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %31 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %34 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lbs_code_2_region(i32 %35)
  %37 = load i32, i32* @COUNTRY_CODE_LEN, align 4
  %38 = call i32 @memcpy(i32 %32, i32 %36, i32 %37)
  %39 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %40 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %43 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %86, %19
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %49 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %46
  %53 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %54 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %57 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %55, i32* %61, align 4
  %62 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %63 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %66 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %72 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %79 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %84)
  br label %86

86:                                               ; preds = %52
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  %89 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %90 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %89, i32 1
  store %struct.chan_freq_power* %90, %struct.chan_freq_power** %6, align 8
  br label %46

91:                                               ; preds = %46
  %92 = load %struct.region_channel*, %struct.region_channel** %3, align 8
  %93 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %96 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %98 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %91, %17, %9
  ret void
}

declare dso_local i32 @lbs_deb_11d(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_code_2_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
