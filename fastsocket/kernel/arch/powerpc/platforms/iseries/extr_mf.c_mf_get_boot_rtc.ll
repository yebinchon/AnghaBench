; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_get_boot_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_get_boot_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }
%struct.ce_msg_comp_data = type { i32, %struct.TYPE_2__, i32, %struct.ce_msg_comp_data*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.boot_rtc_time_data = type { i32, %struct.TYPE_2__, i32, %struct.boot_rtc_time_data*, i32* }

@get_boot_rtc_time_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @mf_get_boot_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_get_boot_rtc(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.ce_msg_comp_data, align 8
  %5 = alloca %struct.boot_rtc_time_data, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %7 = call i32 @memset(%struct.ce_msg_comp_data* %4, i32 0, i32 32)
  %8 = bitcast %struct.boot_rtc_time_data* %5 to %struct.ce_msg_comp_data*
  %9 = call i32 @memset(%struct.ce_msg_comp_data* %8, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.boot_rtc_time_data, %struct.boot_rtc_time_data* %5, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.ce_msg_comp_data, %struct.ce_msg_comp_data* %4, i32 0, i32 4
  store i32* @get_boot_rtc_time_complete, i32** %11, align 8
  %12 = bitcast %struct.boot_rtc_time_data* %5 to %struct.ce_msg_comp_data*
  %13 = getelementptr inbounds %struct.ce_msg_comp_data, %struct.ce_msg_comp_data* %4, i32 0, i32 3
  store %struct.ce_msg_comp_data* %12, %struct.ce_msg_comp_data** %13, align 8
  %14 = call i32 @signal_ce_msg_simple(i32 64, %struct.ce_msg_comp_data* %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %29, %19
  %21 = getelementptr inbounds %struct.boot_rtc_time_data, %struct.boot_rtc_time_data* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i64 (...) @hvlpevent_is_pending()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @process_hvlpevents()
  br label %29

29:                                               ; preds = %27, %24
  br label %20

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.boot_rtc_time_data, %struct.boot_rtc_time_data* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.boot_rtc_time_data, %struct.boot_rtc_time_data* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %37 = call i32 @rtc_set_tm(i32 %32, i32 %35, %struct.rtc_time* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.ce_msg_comp_data*, i32, i32) #1

declare dso_local i32 @signal_ce_msg_simple(i32, %struct.ce_msg_comp_data*) #1

declare dso_local i64 @hvlpevent_is_pending(...) #1

declare dso_local i32 @process_hvlpevents(...) #1

declare dso_local i32 @rtc_set_tm(i32, i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
