; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_get_region_cfp_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_get_region_cfp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.chan_freq_power* }
%struct.chan_freq_power = type { i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@region_cfp_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"region_cfp_table[i].region=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ret NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chan_freq_power* @lbs_get_region_cfp_table(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.chan_freq_power*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @LBS_DEB_MAIN, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_cfp_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_cfp_table, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_cfp_table, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %16
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_cfp_table, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @LBS_DEB_MAIN, align 4
  %41 = call i32 @lbs_deb_leave(i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_cfp_table, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load %struct.chan_freq_power*, %struct.chan_freq_power** %46, align 8
  store %struct.chan_freq_power* %47, %struct.chan_freq_power** %3, align 8
  br label %55

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* @LBS_DEB_MAIN, align 4
  %54 = call i32 @lbs_deb_leave_args(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.chan_freq_power* null, %struct.chan_freq_power** %3, align 8
  br label %55

55:                                               ; preds = %52, %32
  %56 = load %struct.chan_freq_power*, %struct.chan_freq_power** %3, align 8
  ret %struct.chan_freq_power* %56
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @lbs_deb_main(i8*, i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
