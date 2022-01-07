; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c___clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c___clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, i32, %struct.clk*, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @__clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = icmp eq %struct.clk* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = call i64 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %6
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 3
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  %17 = call i32 @__clk_enable(%struct.clk* %16)
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 2
  %20 = load %struct.clk*, %struct.clk** %19, align 8
  %21 = call i32 @__clk_enable(%struct.clk* %20)
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %13
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.clk*)**
  %31 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %30, align 8
  %32 = icmp ne i32 (%struct.clk*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.clk*, %struct.clk** %3, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.clk*)**
  %37 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %36, align 8
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = call i32 %37(%struct.clk* %38)
  br label %40

40:                                               ; preds = %33, %27, %13
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
