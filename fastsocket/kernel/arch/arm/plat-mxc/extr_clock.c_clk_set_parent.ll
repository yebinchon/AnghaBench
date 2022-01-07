; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4
@clocks_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = icmp eq %struct.clk* %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = load %struct.clk*, %struct.clk** %5, align 8
  %17 = icmp eq %struct.clk* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load %struct.clk*, %struct.clk** %5, align 8
  %20 = call i64 @IS_ERR(%struct.clk* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.clk*, %struct.clk** %4, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.clk*, %struct.clk*)**
  %26 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %25, align 8
  %27 = icmp eq i32 (%struct.clk*, %struct.clk*)* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %18, %15, %11, %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %22
  %31 = call i32 @mutex_lock(i32* @clocks_mutex)
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.clk*, %struct.clk*)**
  %35 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %34, align 8
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = load %struct.clk*, %struct.clk** %5, align 8
  %38 = call i32 %35(%struct.clk* %36, %struct.clk* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.clk*, %struct.clk** %5, align 8
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  store %struct.clk* %42, %struct.clk** %44, align 8
  br label %45

45:                                               ; preds = %41, %30
  %46 = call i32 @mutex_unlock(i32* @clocks_mutex)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
