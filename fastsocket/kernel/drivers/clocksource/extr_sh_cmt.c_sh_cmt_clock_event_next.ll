; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64 }
%struct.sh_cmt_priv = type { i32, i64 }

@CLOCK_EVT_MODE_ONESHOT = common dso_local global i64 0, align 8
@FLAG_IRQCONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @sh_cmt_clock_event_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_clock_event_next(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.sh_cmt_priv*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %7 = call %struct.sh_cmt_priv* @ced_to_sh_cmt(%struct.clock_event_device* %6)
  store %struct.sh_cmt_priv* %7, %struct.sh_cmt_priv** %5, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %9 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CLOCK_EVT_MODE_ONESHOT, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %16 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %19 = and i32 %17, %18
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %25 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @sh_cmt_set_next(%struct.sh_cmt_priv* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %22
  ret i32 0
}

declare dso_local %struct.sh_cmt_priv* @ced_to_sh_cmt(%struct.clock_event_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sh_cmt_set_next(%struct.sh_cmt_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
