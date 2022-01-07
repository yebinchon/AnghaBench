; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_init_clk_clkdm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_init_clk_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.clockdomain* }
%struct.clockdomain = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"clock: associated clk %s to clkdm %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"clock: could not associate clk %s to clkdm %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_init_clk_clkdm(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clockdomain*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.clockdomain* @clkdm_lookup(i32 %12)
  store %struct.clockdomain* %13, %struct.clockdomain** %3, align 8
  %14 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %15 = icmp ne %struct.clockdomain* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.clk*, %struct.clk** %2, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 2
  store %struct.clockdomain* %24, %struct.clockdomain** %26, align 8
  br label %35

27:                                               ; preds = %9
  %28 = load %struct.clk*, %struct.clk** %2, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %8, %27, %16
  ret void
}

declare dso_local %struct.clockdomain* @clkdm_lookup(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
