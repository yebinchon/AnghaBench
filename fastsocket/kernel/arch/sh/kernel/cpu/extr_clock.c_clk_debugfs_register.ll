; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_debugfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_debugfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @clk_debugfs_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_debugfs_register(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 1
  %8 = load %struct.clk*, %struct.clk** %7, align 8
  store %struct.clk* %8, %struct.clk** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.clk*, %struct.clk** %5, align 8
  %18 = call i32 @clk_debugfs_register(%struct.clk* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11, %1
  %25 = load %struct.clk*, %struct.clk** %3, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.clk*, %struct.clk** %3, align 8
  %31 = call i32 @clk_debugfs_register_one(%struct.clk* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %24
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @clk_debugfs_register_one(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
