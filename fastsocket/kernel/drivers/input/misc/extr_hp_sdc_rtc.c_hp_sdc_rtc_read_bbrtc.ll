; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_bbrtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_bbrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @hp_sdc_rtc_read_bbrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_read_bbrtc(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.rtc_time, align 4
  %5 = alloca %struct.rtc_time, align 4
  %6 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i64 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = call i64 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %32

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %28, %14
  %16 = call i64 @memcmp(%struct.rtc_time* %4, %struct.rtc_time* %5, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = icmp sgt i32 %19, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %32

23:                                               ; preds = %18
  %24 = call i32 @memcpy(%struct.rtc_time* %5, %struct.rtc_time* %4, i32 4)
  %25 = call i64 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %32

28:                                               ; preds = %23
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %31 = call i32 @memcpy(%struct.rtc_time* %30, %struct.rtc_time* %4, i32 4)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %27, %22, %13, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time*) #1

declare dso_local i64 @memcmp(%struct.rtc_time*, %struct.rtc_time*, i32) #1

declare dso_local i32 @memcpy(%struct.rtc_time*, %struct.rtc_time*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
