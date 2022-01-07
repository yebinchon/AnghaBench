; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_timer_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_timer_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ql_ticks = common dso_local global i32 0, align 4
@sound_ticks = common dso_local global i32 0, align 4
@SVOL = common dso_local global i32 0, align 4
@DAC_LEFT = common dso_local global i8* null, align 8
@DAC_RIGHT = common dso_local global i8* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @q40_timer_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q40_timer_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @ql_ticks, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 1
  store i32 %9, i32* @ql_ticks, align 4
  %10 = load i32, i32* @sound_ticks, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load i32, i32* @sound_ticks, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @SVOL, align 4
  %18 = sub nsw i32 128, %17
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @SVOL, align 4
  %21 = add nsw i32 128, %20
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %5, align 1
  %25 = load i32, i32* @sound_ticks, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @sound_ticks, align 4
  %27 = load i8, i8* %5, align 1
  %28 = load i8*, i8** @DAC_LEFT, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* %5, align 1
  %30 = load i8*, i8** @DAC_RIGHT, align 8
  store i8 %29, i8* %30, align 1
  br label %31

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @ql_ticks, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @q40_timer_routine(i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32 @q40_timer_routine(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
