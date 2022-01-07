; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_lkdtm_do_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_lkdtm_do_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dumptest\00", align 1
@lkdtm_do_action.data = internal global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lkdtm_do_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lkdtm_do_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %64 [
    i32 131, label %12
    i32 140, label %14
    i32 138, label %16
    i32 135, label %17
    i32 133, label %19
    i32 139, label %21
    i32 129, label %25
    i32 132, label %33
    i32 128, label %41
    i32 130, label %51
    i32 137, label %55
    i32 136, label %59
    i32 134, label %63
  ]

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %65

14:                                               ; preds = %1
  %15 = call i32 (...) @BUG()
  br label %65

16:                                               ; preds = %1
  store i32 0, i32* null, align 4
  br label %65

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %18, %17
  br label %18

19:                                               ; preds = %1
  %20 = call i32 @recursive_loop(i32 0)
  br label %65

21:                                               ; preds = %1
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 12
  store volatile i32 305419896, i32* %24, align 4
  br label %65

25:                                               ; preds = %1
  store i32 305419896, i32* %6, align 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @lkdtm_do_action.data, i64 0, i64 1), i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -2023406815, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %65

33:                                               ; preds = %1
  store i64 1020, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmalloc(i64 %34, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 256
  store i32 305419896, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @kfree(i32* %39)
  br label %65

41:                                               ; preds = %1
  store i64 1024, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i64 %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = call i32 (...) @schedule()
  %48 = load i32*, i32** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @memset(i32* %48, i32 120, i64 %49)
  br label %65

51:                                               ; preds = %1
  %52 = call i32 (...) @preempt_disable()
  br label %53

53:                                               ; preds = %53, %51
  %54 = call i32 (...) @cpu_relax()
  br label %53

55:                                               ; preds = %1
  %56 = call i32 (...) @local_irq_disable()
  br label %57

57:                                               ; preds = %57, %55
  %58 = call i32 (...) @cpu_relax()
  br label %57

59:                                               ; preds = %1
  %60 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %61 = call i32 @set_current_state(i32 %60)
  %62 = call i32 (...) @schedule()
  br label %65

63:                                               ; preds = %1
  br label %64

64:                                               ; preds = %1, %63
  br label %65

65:                                               ; preds = %64, %59, %41, %33, %30, %21, %19, %16, %14, %12
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @recursive_loop(i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
