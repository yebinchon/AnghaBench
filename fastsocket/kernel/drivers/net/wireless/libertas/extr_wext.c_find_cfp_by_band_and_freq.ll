; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_find_cfp_by_band_and_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_find_cfp_by_band_and_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan_freq_power = type { i64 }
%struct.lbs_private = type { %struct.region_channel*, i64, %struct.region_channel* }
%struct.region_channel = type { i64, i32, %struct.chan_freq_power*, i32 }

@.str = private unnamed_addr constant [65 x i8] c"find_cfp_by_band_and_freql: can't find cfp by band %d / freq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.chan_freq_power* (%struct.lbs_private*, i64, i64)* @find_cfp_by_band_and_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.chan_freq_power* @find_cfp_by_band_and_freq(%struct.lbs_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.chan_freq_power*, align 8
  %8 = alloca %struct.region_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.chan_freq_power* null, %struct.chan_freq_power** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %89, %3
  %12 = load %struct.chan_freq_power*, %struct.chan_freq_power** %7, align 8
  %13 = icmp ne %struct.chan_freq_power* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 2
  %18 = load %struct.region_channel*, %struct.region_channel** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.region_channel* %18)
  %20 = icmp slt i32 %15, %19
  br label %21

21:                                               ; preds = %14, %11
  %22 = phi i1 [ false, %11 ], [ %20, %14 ]
  br i1 %22, label %23, label %92

23:                                               ; preds = %21
  %24 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 2
  %26 = load %struct.region_channel*, %struct.region_channel** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %26, i64 %28
  store %struct.region_channel* %29, %struct.region_channel** %8, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 0
  %37 = load %struct.region_channel*, %struct.region_channel** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %37, i64 %39
  store %struct.region_channel* %40, %struct.region_channel** %8, align 8
  br label %41

41:                                               ; preds = %34, %23
  %42 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %43 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %48 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %47, i32 0, i32 2
  %49 = load %struct.chan_freq_power*, %struct.chan_freq_power** %48, align 8
  %50 = icmp ne %struct.chan_freq_power* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %41
  br label %89

52:                                               ; preds = %46
  %53 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %54 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %89

59:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %63 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %68 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %67, i32 0, i32 2
  %69 = load %struct.chan_freq_power*, %struct.chan_freq_power** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %69, i64 %71
  %73 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.region_channel*, %struct.region_channel** %8, align 8
  %79 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %78, i32 0, i32 2
  %80 = load %struct.chan_freq_power*, %struct.chan_freq_power** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %80, i64 %82
  store %struct.chan_freq_power* %83, %struct.chan_freq_power** %7, align 8
  br label %88

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %60

88:                                               ; preds = %77, %60
  br label %89

89:                                               ; preds = %88, %58, %51
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %11

92:                                               ; preds = %21
  %93 = load %struct.chan_freq_power*, %struct.chan_freq_power** %7, align 8
  %94 = icmp ne %struct.chan_freq_power* %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %95, %92
  %103 = load %struct.chan_freq_power*, %struct.chan_freq_power** %7, align 8
  ret %struct.chan_freq_power* %103
}

declare dso_local i32 @ARRAY_SIZE(%struct.region_channel*) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
