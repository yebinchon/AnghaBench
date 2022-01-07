; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_pwrdm_autodep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.clockdomain = type { i32 }

@autodeps = common dso_local global %struct.clkdm_pwrdm_autodep* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clkdm_init(%struct.clockdomain** %0, %struct.clkdm_pwrdm_autodep* %1) #0 {
  %3 = alloca %struct.clockdomain**, align 8
  %4 = alloca %struct.clkdm_pwrdm_autodep*, align 8
  %5 = alloca %struct.clockdomain**, align 8
  %6 = alloca %struct.clkdm_pwrdm_autodep*, align 8
  store %struct.clockdomain** %0, %struct.clockdomain*** %3, align 8
  store %struct.clkdm_pwrdm_autodep* %1, %struct.clkdm_pwrdm_autodep** %4, align 8
  store %struct.clockdomain** null, %struct.clockdomain*** %5, align 8
  store %struct.clkdm_pwrdm_autodep* null, %struct.clkdm_pwrdm_autodep** %6, align 8
  %7 = load %struct.clockdomain**, %struct.clockdomain*** %3, align 8
  %8 = icmp ne %struct.clockdomain** %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.clockdomain**, %struct.clockdomain*** %3, align 8
  store %struct.clockdomain** %10, %struct.clockdomain*** %5, align 8
  br label %11

11:                                               ; preds = %19, %9
  %12 = load %struct.clockdomain**, %struct.clockdomain*** %5, align 8
  %13 = load %struct.clockdomain*, %struct.clockdomain** %12, align 8
  %14 = icmp ne %struct.clockdomain* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.clockdomain**, %struct.clockdomain*** %5, align 8
  %17 = load %struct.clockdomain*, %struct.clockdomain** %16, align 8
  %18 = call i32 @clkdm_register(%struct.clockdomain* %17)
  br label %19

19:                                               ; preds = %15
  %20 = load %struct.clockdomain**, %struct.clockdomain*** %5, align 8
  %21 = getelementptr inbounds %struct.clockdomain*, %struct.clockdomain** %20, i32 1
  store %struct.clockdomain** %21, %struct.clockdomain*** %5, align 8
  br label %11

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %4, align 8
  store %struct.clkdm_pwrdm_autodep* %24, %struct.clkdm_pwrdm_autodep** @autodeps, align 8
  %25 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** @autodeps, align 8
  %26 = icmp ne %struct.clkdm_pwrdm_autodep* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** @autodeps, align 8
  store %struct.clkdm_pwrdm_autodep* %28, %struct.clkdm_pwrdm_autodep** %6, align 8
  br label %29

29:                                               ; preds = %38, %27
  %30 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %6, align 8
  %31 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %6, align 8
  %37 = call i32 @_autodep_lookup(%struct.clkdm_pwrdm_autodep* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %6, align 8
  %40 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %39, i32 1
  store %struct.clkdm_pwrdm_autodep* %40, %struct.clkdm_pwrdm_autodep** %6, align 8
  br label %29

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @clkdm_register(%struct.clockdomain*) #1

declare dso_local i32 @_autodep_lookup(%struct.clkdm_pwrdm_autodep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
