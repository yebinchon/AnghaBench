; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_region_chan_supported_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_region_chan_supported_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan_freq_power = type { i32, i64 }

@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lbs_region_chan_supported_11d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_region_chan_supported_11d(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.chan_freq_power*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @LBS_DEB_11D, align 4
  %11 = call i32 @lbs_deb_enter(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.chan_freq_power* @lbs_get_region_cfp_table(i32 %12, i32* %7)
  store %struct.chan_freq_power* %13, %struct.chan_freq_power** %6, align 8
  %14 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %15 = icmp eq %struct.chan_freq_power* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %24, i64 %26
  %28 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %32, i64 %34
  %36 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %41

40:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %47

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* @LBS_DEB_11D, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @lbs_deb_leave_args(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.chan_freq_power* @lbs_get_region_cfp_table(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
