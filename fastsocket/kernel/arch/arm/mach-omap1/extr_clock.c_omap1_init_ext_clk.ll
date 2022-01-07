; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_init_ext_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_init_ext_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @omap1_init_ext_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_init_ext_clk(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @__raw_readw(i32 %7)
  %9 = and i32 %8, -2
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__raw_writew(i32 %10, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 252
  %17 = ashr i32 %16, 2
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 6
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 6
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %3, align 4
  %30 = udiv i32 96000000, %29
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
