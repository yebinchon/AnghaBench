; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_copy_active_data_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_copy_active_data_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@LBS_CONNECTED = common dso_local global i64 0, align 8
@lbs_bg_rates = common dso_local global i32 0, align 4
@MAX_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32*)* @copy_active_data_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_active_data_rates(%struct.lbs_private* %0, i32* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @LBS_DEB_WEXT, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LBS_CONNECTED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LBS_CONNECTED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @lbs_bg_rates, align 4
  %21 = load i32, i32* @MAX_RATES, align 4
  %22 = call i32 @memcpy(i32* %19, i32 %20, i32 %21)
  br label %31

23:                                               ; preds = %12, %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAX_RATES, align 4
  %30 = call i32 @memcpy(i32* %24, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* @LBS_DEB_WEXT, align 4
  %33 = call i32 @lbs_deb_leave(i32 %32)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
