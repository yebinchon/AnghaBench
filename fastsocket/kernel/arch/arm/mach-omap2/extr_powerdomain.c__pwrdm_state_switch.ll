; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_state_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_state_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*, i32)* @_pwrdm_state_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pwrdm_state_switch(%struct.powerdomain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %9 = icmp eq %struct.powerdomain* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %15 = call i32 @pwrdm_read_pwrst(%struct.powerdomain* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %39 [
    i32 129, label %17
    i32 128, label %21
  ]

17:                                               ; preds = %13
  %18 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %19 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %42

21:                                               ; preds = %13
  %22 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %23 = call i32 @pwrdm_read_prev_pwrst(%struct.powerdomain* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %25 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %31 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %21
  br label %42

39:                                               ; preds = %13
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %38, %17
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %48 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pm_dbg_update_time(%struct.powerdomain* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %61 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %39, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pwrdm_read_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @pwrdm_read_prev_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @pm_dbg_update_time(%struct.powerdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
