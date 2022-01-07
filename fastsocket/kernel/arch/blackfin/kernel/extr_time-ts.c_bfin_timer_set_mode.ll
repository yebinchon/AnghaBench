; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_time-ts.c_bfin_timer_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_time-ts.c_bfin_timer_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@HZ = common dso_local global i32 0, align 4
@TIME_SCALE = common dso_local global i32 0, align 4
@TMPWR = common dso_local global i32 0, align 4
@TMREN = common dso_local global i32 0, align 4
@TAUTORLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @bfin_timer_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_timer_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %45 [
    i32 131, label %7
    i32 132, label %32
    i32 128, label %41
    i32 129, label %41
    i32 130, label %44
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @get_cclk()
  %9 = load i32, i32* @HZ, align 4
  %10 = load i32, i32* @TIME_SCALE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sdiv i32 %8, %11
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @TMPWR, align 4
  %16 = call i32 @bfin_write_TCNTL(i32 %15)
  %17 = call i32 (...) @CSYNC()
  %18 = load i32, i32* @TIME_SCALE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @bfin_write_TSCALE(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @bfin_write_TPERIOD(i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @bfin_write_TCOUNT(i64 %23)
  %25 = call i32 (...) @CSYNC()
  %26 = load i32, i32* @TMPWR, align 4
  %27 = load i32, i32* @TMREN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TAUTORLD, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bfin_write_TCNTL(i32 %30)
  br label %45

32:                                               ; preds = %2
  %33 = load i32, i32* @TMPWR, align 4
  %34 = call i32 @bfin_write_TCNTL(i32 %33)
  %35 = call i32 (...) @CSYNC()
  %36 = load i32, i32* @TIME_SCALE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @bfin_write_TSCALE(i32 %37)
  %39 = call i32 @bfin_write_TPERIOD(i64 0)
  %40 = call i32 @bfin_write_TCOUNT(i64 0)
  br label %45

41:                                               ; preds = %2, %2
  %42 = call i32 @bfin_write_TCNTL(i32 0)
  %43 = call i32 (...) @CSYNC()
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %2, %44, %41, %32, %7
  ret void
}

declare dso_local i32 @get_cclk(...) #1

declare dso_local i32 @bfin_write_TCNTL(i32) #1

declare dso_local i32 @CSYNC(...) #1

declare dso_local i32 @bfin_write_TSCALE(i32) #1

declare dso_local i32 @bfin_write_TPERIOD(i64) #1

declare dso_local i32 @bfin_write_TCOUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
