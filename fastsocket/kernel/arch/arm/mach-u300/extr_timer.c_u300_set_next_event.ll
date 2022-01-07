; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_timer.c_u300_set_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_timer.c_u300_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@U300_TIMER_APP_GPT1IE_IRQ_DISABLE = common dso_local global i64 0, align 8
@U300_TIMER_APP_VBASE = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IE = common dso_local global i64 0, align 8
@U300_TIMER_APP_DGPT1_TIMER_DISABLE = common dso_local global i64 0, align 8
@U300_TIMER_APP_DGPT1 = common dso_local global i64 0, align 8
@U300_TIMER_APP_RGPT1_TIMER_RESET = common dso_local global i64 0, align 8
@U300_TIMER_APP_RGPT1 = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1TC = common dso_local global i64 0, align 8
@U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT = common dso_local global i64 0, align 8
@U300_TIMER_APP_SGPT1M = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IE_IRQ_ENABLE = common dso_local global i64 0, align 8
@U300_TIMER_APP_EGPT1_TIMER_ENABLE = common dso_local global i64 0, align 8
@U300_TIMER_APP_EGPT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @u300_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i64, i64* @U300_TIMER_APP_GPT1IE_IRQ_DISABLE, align 8
  %6 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %7 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i64 %5, i64 %8)
  %10 = load i64, i64* @U300_TIMER_APP_DGPT1_TIMER_DISABLE, align 8
  %11 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %12 = load i64, i64* @U300_TIMER_APP_DGPT1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i64 %10, i64 %13)
  %15 = load i64, i64* @U300_TIMER_APP_RGPT1_TIMER_RESET, align 8
  %16 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %17 = load i64, i64* @U300_TIMER_APP_RGPT1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i64 %15, i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %22 = load i64, i64* @U300_TIMER_APP_GPT1TC, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i64 %20, i64 %23)
  %25 = load i64, i64* @U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT, align 8
  %26 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %27 = load i64, i64* @U300_TIMER_APP_SGPT1M, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i64 %25, i64 %28)
  %30 = load i64, i64* @U300_TIMER_APP_GPT1IE_IRQ_ENABLE, align 8
  %31 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %32 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i64 %30, i64 %33)
  %35 = load i64, i64* @U300_TIMER_APP_EGPT1_TIMER_ENABLE, align 8
  %36 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %37 = load i64, i64* @U300_TIMER_APP_EGPT1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %35, i64 %38)
  ret i32 0
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
