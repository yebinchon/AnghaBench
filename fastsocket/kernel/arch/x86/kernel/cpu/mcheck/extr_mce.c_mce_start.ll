; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@monarch_timeout = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@global_nwo = common dso_local global i32 0, align 4
@mce_callin = common dso_local global i32 0, align 4
@SPINUNIT = common dso_local global i32 0, align 4
@mce_executing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mce_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 (...) @num_online_cpus()
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* @monarch_timeout, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @NSEC_PER_USEC, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @atomic_add(i32 %17, i32* @global_nwo)
  %19 = call i32 (...) @smp_wmb()
  %20 = call i32 @atomic_inc_return(i32* @mce_callin)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %30, %15
  %22 = call i32 @atomic_read(i32* @mce_callin)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i64 @mce_timed_out(i32* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @atomic_set(i32* @global_nwo, i32 0)
  store i32 -1, i32* %2, align 4
  br label %57

30:                                               ; preds = %25
  %31 = load i32, i32* @SPINUNIT, align 4
  %32 = call i32 @ndelay(i32 %31)
  br label %21

33:                                               ; preds = %21
  %34 = call i32 (...) @smp_rmb()
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @atomic_set(i32* @mce_executing, i32 1)
  br label %53

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %49, %39
  %41 = call i32 @atomic_read(i32* @mce_executing)
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call i64 @mce_timed_out(i32* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @atomic_set(i32* @global_nwo, i32 0)
  store i32 -1, i32* %2, align 4
  br label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @SPINUNIT, align 4
  %51 = call i32 @ndelay(i32 %50)
  br label %40

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %37
  %54 = call i32 @atomic_read(i32* @global_nwo)
  %55 = load i32*, i32** %3, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %47, %28, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @mce_timed_out(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
