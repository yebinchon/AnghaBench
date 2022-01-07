; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c___clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c___clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 (%struct.clk*)*, i32, %struct.clk*, %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @__clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = icmp eq %struct.clk* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = call i64 @IS_ERR(%struct.clk* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %33

10:                                               ; preds = %5
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 3
  %13 = load %struct.clk*, %struct.clk** %12, align 8
  call void @__clk_disable(%struct.clk* %13)
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  call void @__clk_disable(%struct.clk* %16)
  %17 = load %struct.clk*, %struct.clk** %2, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %10
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %24, align 8
  %26 = icmp ne i32 (%struct.clk*)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.clk*, %struct.clk** %2, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %29, align 8
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = call i32 %30(%struct.clk* %31)
  br label %33

33:                                               ; preds = %9, %27, %22, %10
  ret void
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
