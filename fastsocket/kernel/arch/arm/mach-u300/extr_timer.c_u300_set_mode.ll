; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_timer.c_u300_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_timer.c_u300_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@U300_TIMER_APP_GPT1IE_IRQ_DISABLE = common dso_local global i32 0, align 4
@U300_TIMER_APP_VBASE = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IE = common dso_local global i64 0, align 8
@U300_TIMER_APP_DGPT1_TIMER_DISABLE = common dso_local global i32 0, align 4
@U300_TIMER_APP_DGPT1 = common dso_local global i64 0, align 8
@TICKS_PER_JIFFY = common dso_local global i32 0, align 4
@U300_TIMER_APP_GPT1TC = common dso_local global i64 0, align 8
@U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@U300_TIMER_APP_SGPT1M = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IE_IRQ_ENABLE = common dso_local global i32 0, align 4
@U300_TIMER_APP_EGPT1_TIMER_ENABLE = common dso_local global i32 0, align 4
@U300_TIMER_APP_EGPT1 = common dso_local global i64 0, align 8
@U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @u300_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u300_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %79 [
    i32 131, label %6
    i32 132, label %37
    i32 128, label %67
    i32 129, label %67
    i32 130, label %78
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_DISABLE, align 4
  %8 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %9 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %7, i64 %10)
  %12 = load i32, i32* @U300_TIMER_APP_DGPT1_TIMER_DISABLE, align 4
  %13 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %14 = load i64, i64* @U300_TIMER_APP_DGPT1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %12, i64 %15)
  %17 = load i32, i32* @TICKS_PER_JIFFY, align 4
  %18 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %19 = load i64, i64* @U300_TIMER_APP_GPT1TC, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %17, i64 %20)
  %22 = load i32, i32* @U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS, align 4
  %23 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %24 = load i64, i64* @U300_TIMER_APP_SGPT1M, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %22, i64 %25)
  %27 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_ENABLE, align 4
  %28 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %29 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %27, i64 %30)
  %32 = load i32, i32* @U300_TIMER_APP_EGPT1_TIMER_ENABLE, align 4
  %33 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %34 = load i64, i64* @U300_TIMER_APP_EGPT1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %32, i64 %35)
  br label %79

37:                                               ; preds = %2
  %38 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_DISABLE, align 4
  %39 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %40 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %38, i64 %41)
  %43 = load i32, i32* @U300_TIMER_APP_DGPT1_TIMER_DISABLE, align 4
  %44 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %45 = load i64, i64* @U300_TIMER_APP_DGPT1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %43, i64 %46)
  %48 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %49 = load i64, i64* @U300_TIMER_APP_GPT1TC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 -1, i64 %50)
  %52 = load i32, i32* @U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT, align 4
  %53 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %54 = load i64, i64* @U300_TIMER_APP_SGPT1M, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %52, i64 %55)
  %57 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_ENABLE, align 4
  %58 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %59 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %57, i64 %60)
  %62 = load i32, i32* @U300_TIMER_APP_EGPT1_TIMER_ENABLE, align 4
  %63 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %64 = load i64, i64* @U300_TIMER_APP_EGPT1, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %62, i64 %65)
  br label %79

67:                                               ; preds = %2, %2
  %68 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_DISABLE, align 4
  %69 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %70 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %68, i64 %71)
  %73 = load i32, i32* @U300_TIMER_APP_DGPT1_TIMER_DISABLE, align 4
  %74 = load i64, i64* @U300_TIMER_APP_VBASE, align 8
  %75 = load i64, i64* @U300_TIMER_APP_DGPT1, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %73, i64 %76)
  br label %79

78:                                               ; preds = %2
  br label %79

79:                                               ; preds = %2, %78, %67, %37, %6
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
