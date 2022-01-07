; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_vt_waitactive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_vt_waitactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_event_wait = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@fg_console = common dso_local global i32 0, align 4
@VT_EVENT_SWITCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vt_waitactive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vt_event_wait, align 8
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @fg_console, align 4
  %8 = add nsw i32 %7, 1
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %29

11:                                               ; preds = %5
  %12 = load i32, i32* @VT_EVENT_SWITCH, align 4
  %13 = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = call i32 @vt_event_wait(%struct.vt_event_wait* %4)
  %16 = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.vt_event_wait, %struct.vt_event_wait* %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %5, label %29

29:                                               ; preds = %23, %10
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vt_event_wait(%struct.vt_event_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
