; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__autodep_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__autodep_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_pwrdm_autodep = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.powerdomain*, i32 }
%struct.powerdomain = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"clockdomain: autodeps: powerdomain %s does not exist\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clkdm_pwrdm_autodep*)* @_autodep_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_autodep_lookup(%struct.clkdm_pwrdm_autodep* %0) #0 {
  %2 = alloca %struct.clkdm_pwrdm_autodep*, align 8
  %3 = alloca %struct.powerdomain*, align 8
  store %struct.clkdm_pwrdm_autodep* %0, %struct.clkdm_pwrdm_autodep** %2, align 8
  %4 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %2, align 8
  %5 = icmp ne %struct.clkdm_pwrdm_autodep* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %2, align 8
  %9 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @omap_chip_is(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %36

14:                                               ; preds = %7
  %15 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %2, align 8
  %16 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.powerdomain* @pwrdm_lookup(i32 %18)
  store %struct.powerdomain* %19, %struct.powerdomain** %3, align 8
  %20 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %21 = icmp ne %struct.powerdomain* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %2, align 8
  %24 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.powerdomain* @ERR_PTR(i32 %29)
  store %struct.powerdomain* %30, %struct.powerdomain** %3, align 8
  br label %31

31:                                               ; preds = %22, %14
  %32 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %33 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %2, align 8
  %34 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.powerdomain* %32, %struct.powerdomain** %35, align 8
  br label %36

36:                                               ; preds = %31, %13, %6
  ret void
}

declare dso_local i32 @omap_chip_is(i32) #1

declare dso_local %struct.powerdomain* @pwrdm_lookup(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.powerdomain* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
