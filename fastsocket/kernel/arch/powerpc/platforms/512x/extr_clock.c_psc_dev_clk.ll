; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/512x/extr_clock.c_psc_dev_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/512x/extr_clock.c_psc_dev_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@dev_clks = common dso_local global %struct.clk** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (i32)* @psc_dev_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @psc_dev_clk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 27, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.clk**, %struct.clk*** @dev_clks, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.clk*, %struct.clk** %8, i64 %10
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %12, i64 %14
  store %struct.clk* %15, %struct.clk** %5, align 8
  %16 = load %struct.clk*, %struct.clk** %5, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.clk*, %struct.clk** %5, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
