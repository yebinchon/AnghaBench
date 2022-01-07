; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_del_autodeps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_del_autodeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_pwrdm_autodep = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.clockdomain = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@autodeps = common dso_local global %struct.clkdm_pwrdm_autodep* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"clockdomain: removing %s sleepdep/wkdep for pwrdm %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clockdomain*)* @_clkdm_del_autodeps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_clkdm_del_autodeps(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca %struct.clkdm_pwrdm_autodep*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %4 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** @autodeps, align 8
  store %struct.clkdm_pwrdm_autodep* %4, %struct.clkdm_pwrdm_autodep** %3, align 8
  br label %5

5:                                                ; preds = %58, %1
  %6 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %7 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %5
  %12 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %13 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = call i64 @IS_ERR(%struct.TYPE_11__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %58

19:                                               ; preds = %11
  %20 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %21 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @omap_chip_is(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %28 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %34 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  %40 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %41 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %45 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = call i32 @pwrdm_del_sleepdep(%struct.TYPE_10__* %43, %struct.TYPE_11__* %47)
  %49 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %50 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %54 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = call i32 @pwrdm_del_wkdep(%struct.TYPE_10__* %52, %struct.TYPE_11__* %56)
  br label %58

58:                                               ; preds = %26, %25, %18
  %59 = load %struct.clkdm_pwrdm_autodep*, %struct.clkdm_pwrdm_autodep** %3, align 8
  %60 = getelementptr inbounds %struct.clkdm_pwrdm_autodep, %struct.clkdm_pwrdm_autodep* %59, i32 1
  store %struct.clkdm_pwrdm_autodep* %60, %struct.clkdm_pwrdm_autodep** %3, align 8
  br label %5

61:                                               ; preds = %5
  ret void
}

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @omap_chip_is(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pwrdm_del_sleepdep(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @pwrdm_del_wkdep(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
