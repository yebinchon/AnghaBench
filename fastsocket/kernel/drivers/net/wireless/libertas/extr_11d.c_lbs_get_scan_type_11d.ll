; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_get_scan_type_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_get_scan_type_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_region_chan_11d = type { i32 }

@CMD_SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"found, do active scan\0A\00", align 1
@CMD_SCAN_TYPE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"not found, do passive scan\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ret scan_type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_scan_type_11d(i32 %0, %struct.parsed_region_chan_11d* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_region_chan_11d*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.parsed_region_chan_11d* %1, %struct.parsed_region_chan_11d** %4, align 8
  %6 = load i32, i32* @CMD_SCAN_TYPE_PASSIVE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @LBS_DEB_11D, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %4, align 8
  %11 = call i64 @lbs_channel_known_11d(i32 %9, %struct.parsed_region_chan_11d* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @CMD_SCAN_TYPE_ACTIVE, align 4
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  %17 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @LBS_DEB_11D, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @lbs_deb_leave_args(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i64 @lbs_channel_known_11d(i32, %struct.parsed_region_chan_11d*) #1

declare dso_local i32 @lbs_deb_11d(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
