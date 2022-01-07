; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_timer-gp.c_omap2_gp_timer_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_timer-gp.c_omap2_gp_timer_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@gptimer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @omap2_gp_timer_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_gp_timer_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* @gptimer, align 4
  %7 = call i32 @omap_dm_timer_stop(i32 %6)
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %27 [
    i32 131, label %9
    i32 132, label %25
    i32 128, label %26
    i32 129, label %26
    i32 130, label %26
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @gptimer, align 4
  %11 = call i32 @omap_dm_timer_get_fclk(i32 %10)
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = load i32, i32* @HZ, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @cpu_is_omap44xx()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 255, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i32, i32* @gptimer, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 -1, %22
  %24 = call i32 @omap_dm_timer_set_load_start(i32 %21, i32 1, i32 %23)
  br label %27

25:                                               ; preds = %2
  br label %27

26:                                               ; preds = %2, %2, %2
  br label %27

27:                                               ; preds = %2, %26, %25, %20
  ret void
}

declare dso_local i32 @omap_dm_timer_stop(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @omap_dm_timer_get_fclk(i32) #1

declare dso_local i32 @cpu_is_omap44xx(...) #1

declare dso_local i32 @omap_dm_timer_set_load_start(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
