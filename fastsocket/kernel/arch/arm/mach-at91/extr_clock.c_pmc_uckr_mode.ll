; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c_pmc_uckr_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c_pmc_uckr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@AT91_CKGR_UCKR = common dso_local global i32 0, align 4
@AT91_PMC_BIASEN = common dso_local global i32 0, align 4
@AT91_PMC_LOCKU = common dso_local global i32 0, align 4
@AT91_PMC_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @pmc_uckr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_uckr_mode(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AT91_CKGR_UCKR, align 4
  %7 = call i32 @at91_sys_read(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = call i64 (...) @cpu_is_at91sam9g45()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @AT91_PMC_BIASEN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %10
  %18 = load i32, i32* @AT91_PMC_BIASEN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @AT91_PMC_LOCKU, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @AT91_CKGR_UCKR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.clk*, %struct.clk** %3, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i32 @at91_sys_write(i32 %28, i32 %33)
  br label %44

35:                                               ; preds = %23
  %36 = load i32, i32* @AT91_CKGR_UCKR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = call i32 @at91_sys_write(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %35, %26
  br label %45

45:                                               ; preds = %47, %44
  %46 = call i32 (...) @cpu_relax()
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* @AT91_PMC_SR, align 4
  %49 = call i32 @at91_sys_read(i32 %48)
  %50 = load i32, i32* @AT91_PMC_LOCKU, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %45, label %54

54:                                               ; preds = %47
  ret void
}

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i64 @cpu_is_at91sam9g45(...) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
