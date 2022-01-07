; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_set_regiontable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_set_regiontable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, %struct.chan_freq_power* }
%struct.chan_freq_power = type { i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wrong region code %#x in band B/G\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_regiontable(%struct.lbs_private* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.chan_freq_power*, align 8
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @LBS_DEB_MAIN, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @memset(%struct.TYPE_2__* %15, i32 0, i32 8)
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.chan_freq_power* @lbs_get_region_cfp_table(i8* %17, i32* %10)
  store %struct.chan_freq_power* %18, %struct.chan_freq_power** %9, align 8
  %19 = load %struct.chan_freq_power*, %struct.chan_freq_power** %9, align 8
  %20 = icmp ne %struct.chan_freq_power* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 8
  %30 = load %struct.chan_freq_power*, %struct.chan_freq_power** %9, align 8
  %31 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store %struct.chan_freq_power* %30, %struct.chan_freq_power** %37, align 8
  br label %41

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %7, align 4
  br label %67

41:                                               ; preds = %21
  %42 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %43 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i8* %49, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i8* %57, i8** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %41, %38
  %68 = load i32, i32* @LBS_DEB_MAIN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lbs_deb_leave_args(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local %struct.chan_freq_power* @lbs_get_region_cfp_table(i8*, i32*) #1

declare dso_local i32 @lbs_deb_main(i8*, i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
