; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_cgr_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_cgr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@MXC_CCM_CGR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @cgr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgr_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__raw_readl(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 3, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.clk*, %struct.clk** %2, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MXC_CCM_CGR2, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %9
  %27 = load %struct.clk*, %struct.clk** %2, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.clk*, %struct.clk** %2, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %26, %9
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__raw_writel(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
