; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_allow_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_allow_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, i32 }

@CLKDM_CAN_ENABLE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"clock: automatic idle transitions cannot be enabled on clockdomain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"clockdomain: enabling automatic idle transitions for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_clkdm_allow_idle(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %3 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %4 = icmp ne %struct.clockdomain* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %8 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLKDM_CAN_ENABLE_AUTO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %15 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %35

18:                                               ; preds = %6
  %19 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %20 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %24 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %23, i32 0, i32 1
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %29 = call i32 @_clkdm_add_autodeps(%struct.clockdomain* %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %32 = call i32 @_omap2_clkdm_set_hwsup(%struct.clockdomain* %31, i32 1)
  %33 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %34 = call i32 @pwrdm_clkdm_state_switch(%struct.clockdomain* %33)
  br label %35

35:                                               ; preds = %30, %13, %5
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @_clkdm_add_autodeps(%struct.clockdomain*) #1

declare dso_local i32 @_omap2_clkdm_set_hwsup(%struct.clockdomain*, i32) #1

declare dso_local i32 @pwrdm_clkdm_state_switch(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
