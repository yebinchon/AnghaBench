; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_suspend_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_suspend_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i64 }
%struct.cmd_header = type { i32 }

@LBS_DEB_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* @lbs_suspend_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_suspend_callback(%struct.lbs_private* %0, i64 %1, %struct.cmd_header* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cmd_header* %2, %struct.cmd_header** %6, align 8
  %7 = load i32, i32* @LBS_DEB_FW, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @netif_device_detach(i64 %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @netif_device_detach(i64 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @LBS_DEB_FW, align 4
  %26 = call i32 @lbs_deb_leave(i32 %25)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @netif_device_detach(i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
