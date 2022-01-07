; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_get_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_get_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }
%struct.ce_msg_comp_data = type { %struct.TYPE_2__, i32, i32, %struct.ce_msg_comp_data*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.rtc_time_data = type { %struct.TYPE_2__, i32, i32, %struct.rtc_time_data*, i32* }

@get_rtc_time_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @mf_get_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_get_rtc(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.ce_msg_comp_data, align 8
  %5 = alloca %struct.rtc_time_data, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %7 = bitcast %struct.ce_msg_comp_data* %4 to %struct.rtc_time_data*
  %8 = call i32 @memset(%struct.rtc_time_data* %7, i32 0, i32 32)
  %9 = call i32 @memset(%struct.rtc_time_data* %5, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.rtc_time_data, %struct.rtc_time_data* %5, i32 0, i32 2
  %11 = call i32 @init_completion(i32* %10)
  %12 = getelementptr inbounds %struct.ce_msg_comp_data, %struct.ce_msg_comp_data* %4, i32 0, i32 4
  store i32* @get_rtc_time_complete, i32** %12, align 8
  %13 = bitcast %struct.rtc_time_data* %5 to %struct.ce_msg_comp_data*
  %14 = getelementptr inbounds %struct.ce_msg_comp_data, %struct.ce_msg_comp_data* %4, i32 0, i32 3
  store %struct.ce_msg_comp_data* %13, %struct.ce_msg_comp_data** %14, align 8
  %15 = bitcast %struct.ce_msg_comp_data* %4 to %struct.rtc_time_data*
  %16 = call i32 @signal_ce_msg_simple(i32 64, %struct.rtc_time_data* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.rtc_time_data, %struct.rtc_time_data* %5, i32 0, i32 2
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = getelementptr inbounds %struct.rtc_time_data, %struct.rtc_time_data* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.rtc_time_data, %struct.rtc_time_data* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %30 = call i32 @rtc_set_tm(i32 %25, i32 %28, %struct.rtc_time* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.rtc_time_data*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @signal_ce_msg_simple(i32, %struct.rtc_time_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rtc_set_tm(i32, i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
