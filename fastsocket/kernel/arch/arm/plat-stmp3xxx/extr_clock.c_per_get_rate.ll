; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_per_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_per_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @per_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @per_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store i32 255, i32* %5, align 4
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @__raw_readl(i64 %18)
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load %struct.clk*, %struct.clk** %2, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %49

28:                                               ; preds = %15, %1
  %29 = load %struct.clk*, %struct.clk** %2, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @__raw_readl(i64 %31)
  %33 = load %struct.clk*, %struct.clk** %2, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %32, %35
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = sdiv i64 %43, %42
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.clk*, %struct.clk** %2, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %25
  %50 = load %struct.clk*, %struct.clk** %2, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  ret i64 %52
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
