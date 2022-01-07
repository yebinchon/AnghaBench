; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_quick_pit_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_quick_pit_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_QUICK_PIT_ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fast TSC calibration failed\0A\00", align 1
@PIT_TICK_RATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Fast TSC calibration using PIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @quick_pit_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quick_pit_calibrate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 @inb(i32 97)
  %8 = and i32 %7, -3
  %9 = or i32 %8, 1
  %10 = call i32 @outb(i32 %9, i32 97)
  %11 = call i32 @outb(i32 176, i32 67)
  %12 = call i32 @outb(i32 255, i32 66)
  %13 = call i32 @outb(i32 255, i32 66)
  %14 = call i32 @pit_verify_msb(i32 0)
  %15 = call i64 @pit_expect_msb(i32 255, i64* %3, i64* %5)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MAX_QUICK_PIT_ITERATIONS, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 255, %23
  %25 = call i64 @pit_expect_msb(i32 %24, i64* %4, i64* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %4, align 8
  %36 = lshr i64 %35, 11
  %37 = icmp uge i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 254, %40
  %42 = call i32 @pit_verify_msb(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  br label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %18

49:                                               ; preds = %44, %27, %18
  br label %50

50:                                               ; preds = %49, %0
  %51 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %63

52:                                               ; preds = %45
  %53 = load i64, i64* @PIT_TICK_RATE, align 8
  %54 = load i64, i64* %4, align 8
  %55 = mul i64 %54, %53
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i32, i32* %2, align 4
  %58 = mul nsw i32 %57, 256
  %59 = mul nsw i32 %58, 1000
  %60 = call i32 @do_div(i64 %56, i32 %59)
  %61 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %1, align 8
  br label %63

63:                                               ; preds = %52, %50
  %64 = load i64, i64* %1, align 8
  ret i64 %64
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pit_verify_msb(i32) #1

declare dso_local i64 @pit_expect_msb(i32, i64*, i64*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
