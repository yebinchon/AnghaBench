; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_pm.c_at91_pm_verify_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_pm.c_at91_pm_verify_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_PMC_SCSR = common dso_local global i32 0, align 4
@AT91RM9200_PMC_UHP = common dso_local global i64 0, align 8
@AT91RM9200_PMC_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"AT91: PM - Suspend-to-RAM with USB still active\0A\00", align 1
@AT91SAM926x_PMC_UHP = common dso_local global i64 0, align 8
@AT91SAM926x_PMC_UDP = common dso_local global i64 0, align 8
@AT91CAP9_PMC_UHP = common dso_local global i64 0, align 8
@AT91_PMC_CSS = common dso_local global i8* null, align 8
@AT91_PMC_CSS_SLOW = common dso_local global i8* null, align 8
@AT91_PMC_PCK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @at91_pm_verify_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pm_verify_clocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @AT91_PMC_SCSR, align 4
  %5 = call i8* @at91_sys_read(i32 %4)
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %2, align 8
  %7 = call i64 (...) @cpu_is_at91rm9200()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @AT91RM9200_PMC_UHP, align 8
  %12 = load i64, i64* @AT91RM9200_PMC_UDP, align 8
  %13 = or i64 %11, %12
  %14 = and i64 %10, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

18:                                               ; preds = %9
  br label %57

19:                                               ; preds = %0
  %20 = call i64 (...) @cpu_is_at91sam9260()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = call i64 (...) @cpu_is_at91sam9261()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = call i64 (...) @cpu_is_at91sam9263()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = call i64 (...) @cpu_is_at91sam9g20()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i64 (...) @cpu_is_at91sam9g10()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %28, %25, %22, %19
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @AT91SAM926x_PMC_UHP, align 8
  %37 = load i64, i64* @AT91SAM926x_PMC_UDP, align 8
  %38 = or i64 %36, %37
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

43:                                               ; preds = %34
  br label %56

44:                                               ; preds = %31
  %45 = call i64 (...) @cpu_is_at91cap9()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @AT91CAP9_PMC_UHP, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %18
  store i32 1, i32* %1, align 4
  br label %58

58:                                               ; preds = %57, %52, %41, %16
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i8* @at91_sys_read(i32) #1

declare dso_local i64 @cpu_is_at91rm9200(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @cpu_is_at91sam9260(...) #1

declare dso_local i64 @cpu_is_at91sam9261(...) #1

declare dso_local i64 @cpu_is_at91sam9263(...) #1

declare dso_local i64 @cpu_is_at91sam9g20(...) #1

declare dso_local i64 @cpu_is_at91sam9g10(...) #1

declare dso_local i64 @cpu_is_at91cap9(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
