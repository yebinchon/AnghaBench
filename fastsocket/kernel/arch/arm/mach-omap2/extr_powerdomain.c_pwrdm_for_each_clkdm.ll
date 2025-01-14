; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_for_each_clkdm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_for_each_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { %struct.clockdomain** }
%struct.clockdomain = type opaque

@EINVAL = common dso_local global i32 0, align 4
@pwrdm_rwlock = common dso_local global i32 0, align 4
@PWRDM_MAX_CLKDMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_for_each_clkdm(%struct.powerdomain* %0, i32 (%struct.powerdomain*, %struct.clockdomain*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32 (%struct.powerdomain*, %struct.clockdomain*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 (%struct.powerdomain*, %struct.clockdomain*)* %1, i32 (%struct.powerdomain*, %struct.clockdomain*)** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32 (%struct.powerdomain*, %struct.clockdomain*)*, i32 (%struct.powerdomain*, %struct.clockdomain*)** %5, align 8
  %10 = icmp ne i32 (%struct.powerdomain*, %struct.clockdomain*)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @read_lock_irqsave(i32* @pwrdm_rwlock, i64 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PWRDM_MAX_CLKDMS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = load i32 (%struct.powerdomain*, %struct.clockdomain*)*, i32 (%struct.powerdomain*, %struct.clockdomain*)** %5, align 8
  %29 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %30 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %31 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %30, i32 0, i32 0
  %32 = load %struct.clockdomain**, %struct.clockdomain*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.clockdomain*, %struct.clockdomain** %32, i64 %34
  %36 = load %struct.clockdomain*, %struct.clockdomain** %35, align 8
  %37 = call i32 %28(%struct.powerdomain* %29, %struct.clockdomain* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %25
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @read_unlock_irqrestore(i32* @pwrdm_rwlock, i64 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
