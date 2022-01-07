; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_clock.c_clk_disable_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_clock.c_clk_disable_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, i32 (%struct.clk*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @clk_disable_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_disable_unlocked(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = getelementptr inbounds %struct.clk, %struct.clk* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.clk*, %struct.clk** %2, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 2
  %11 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.clk*, i32)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %15, align 8
  %17 = load %struct.clk*, %struct.clk** %2, align 8
  %18 = call i32 %16(%struct.clk* %17, i32 0)
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load %struct.clk*, %struct.clk** %21, align 8
  %23 = icmp ne %struct.clk* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 1
  %27 = load %struct.clk*, %struct.clk** %26, align 8
  call void @clk_disable_unlocked(%struct.clk* %27)
  br label %28

28:                                               ; preds = %24, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
