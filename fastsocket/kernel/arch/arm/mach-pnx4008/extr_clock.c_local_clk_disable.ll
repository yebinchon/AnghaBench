; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_local_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_local_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 (%struct.clk*, i32)*, i64 }

@FIXED_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @local_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = getelementptr inbounds %struct.clk, %struct.clk* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @FIXED_RATE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 1
  %17 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.clk*, i32)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %21, align 8
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = call i32 %22(%struct.clk* %23, i32 0)
  br label %25

25:                                               ; preds = %19, %14, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
