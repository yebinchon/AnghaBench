; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mfgpt_32.c_geode_mfgpt_toggle_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mfgpt_32.c_geode_mfgpt_toggle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MFGPT_CMP1 = common dso_local global i32 0, align 4
@MFGPT_MAX_TIMERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MSR_MFGPT_NR = common dso_local global i32 0, align 4
@MSR_MFGPT_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geode_mfgpt_toggle_event(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MFGPT_CMP1, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 8
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MFGPT_MAX_TIMERS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %4
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %72

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %48 [
    i32 128, label %31
    i32 129, label %36
    i32 130, label %42
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @MSR_MFGPT_NR, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 24
  %35 = shl i32 1, %34
  store i32 %35, i32* %11, align 4
  br label %51

36:                                               ; preds = %29
  %37 = load i32, i32* @MSR_MFGPT_NR, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 1, %40
  store i32 %41, i32* %11, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load i32, i32* @MSR_MFGPT_IRQ, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  %47 = shl i32 1, %46
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %29
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %42, %36, %31
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @rdmsr(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @wrmsr(i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %48, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
