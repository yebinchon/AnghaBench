; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_local_clk_use.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_local_clk_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @local_clk_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_clk_use(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  %13 = icmp ne %struct.clk* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 1
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  %18 = call i32 @local_clk_use(%struct.clk* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.clk*, %struct.clk** %2, align 8
  %29 = call i32 @local_clk_enable(%struct.clk* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.clk*, %struct.clk** %2, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 1
  %35 = load %struct.clk*, %struct.clk** %34, align 8
  %36 = icmp ne %struct.clk* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.clk*, %struct.clk** %2, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 1
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %41 = call i32 @local_clk_unuse(%struct.clk* %40)
  %42 = load %struct.clk*, %struct.clk** %2, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %37, %32, %27
  br label %47

47:                                               ; preds = %46, %1
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @local_clk_enable(%struct.clk*) #1

declare dso_local i32 @local_clk_unuse(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
