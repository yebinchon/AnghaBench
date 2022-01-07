; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c___clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c___clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, i32 (%struct.clk*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @__clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = getelementptr inbounds %struct.clk, %struct.clk* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.clk*, %struct.clk** %2, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 2
  %17 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.clk*, i32)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 2
  %22 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %21, align 8
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = call i32 %22(%struct.clk* %23, i32 0)
  br label %25

25:                                               ; preds = %19, %14, %1
  %26 = load %struct.clk*, %struct.clk** %2, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = icmp ne %struct.clk* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  call void @__clk_disable(%struct.clk* %33)
  br label %34

34:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
