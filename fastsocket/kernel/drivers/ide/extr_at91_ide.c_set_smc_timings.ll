; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_at91_ide.c_set_smc_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_at91_ide.c_set_smc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_SMC_READMODE = common dso_local global i64 0, align 8
@AT91_SMC_WRITEMODE = common dso_local global i64 0, align 8
@AT91_SMC_BAT_SELECT = common dso_local global i64 0, align 8
@AT91_SMC_EXNWMODE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i32)* @set_smc_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_smc_timings(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @AT91_SMC_READMODE, align 8
  %15 = load i64, i64* @AT91_SMC_WRITEMODE, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @AT91_SMC_BAT_SELECT, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i64, i64* @AT91_SMC_EXNWMODE_READY, align 8
  %23 = load i64, i64* %13, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @AT91_SMC_TDF_(i64 %29)
  %31 = load i64, i64* %13, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @AT91_SMC_MODE(i32 %34)
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @at91_sys_write(i32 %35, i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @AT91_SMC_SETUP(i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @AT91_SMC_NWESETUP_(i64 %40)
  %42 = call i64 @AT91_SMC_NCS_WRSETUP_(i32 0)
  %43 = or i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @AT91_SMC_NRDSETUP_(i64 %44)
  %46 = or i64 %43, %45
  %47 = call i64 @AT91_SMC_NCS_RDSETUP_(i32 0)
  %48 = or i64 %46, %47
  %49 = call i32 @at91_sys_write(i32 %39, i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @AT91_SMC_PULSE(i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @AT91_SMC_NWEPULSE_(i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @AT91_SMC_NCS_WRPULSE_(i64 %54)
  %56 = or i64 %53, %55
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @AT91_SMC_NRDPULSE_(i64 %57)
  %59 = or i64 %56, %58
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @AT91_SMC_NCS_RDPULSE_(i64 %60)
  %62 = or i64 %59, %61
  %63 = call i32 @at91_sys_write(i32 %51, i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @AT91_SMC_CYCLE(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @AT91_SMC_NWECYCLE_(i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @AT91_SMC_NRDCYCLE_(i64 %68)
  %70 = or i64 %67, %69
  %71 = call i32 @at91_sys_write(i32 %65, i64 %70)
  ret void
}

declare dso_local i64 @AT91_SMC_TDF_(i64) #1

declare dso_local i32 @at91_sys_write(i32, i64) #1

declare dso_local i32 @AT91_SMC_MODE(i32) #1

declare dso_local i32 @AT91_SMC_SETUP(i32) #1

declare dso_local i64 @AT91_SMC_NWESETUP_(i64) #1

declare dso_local i64 @AT91_SMC_NCS_WRSETUP_(i32) #1

declare dso_local i64 @AT91_SMC_NRDSETUP_(i64) #1

declare dso_local i64 @AT91_SMC_NCS_RDSETUP_(i32) #1

declare dso_local i32 @AT91_SMC_PULSE(i32) #1

declare dso_local i64 @AT91_SMC_NWEPULSE_(i64) #1

declare dso_local i64 @AT91_SMC_NCS_WRPULSE_(i64) #1

declare dso_local i64 @AT91_SMC_NRDPULSE_(i64) #1

declare dso_local i64 @AT91_SMC_NCS_RDPULSE_(i64) #1

declare dso_local i32 @AT91_SMC_CYCLE(i32) #1

declare dso_local i64 @AT91_SMC_NWECYCLE_(i64) #1

declare dso_local i64 @AT91_SMC_NRDCYCLE_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
