; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_notify_command_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_notify_command_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i32 }

@LBS_DEB_THREAD = common dso_local global i32 0, align 4
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@PS_STATE_AWAKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_notify_command_response(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LBS_DEB_THREAD, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PS_STATE_SLEEP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @PS_STATE_AWAKE, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 2
  %26 = call i32 @wake_up_interruptible(i32* %25)
  %27 = load i32, i32* @LBS_DEB_THREAD, align 4
  %28 = call i32 @lbs_deb_leave(i32 %27)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
